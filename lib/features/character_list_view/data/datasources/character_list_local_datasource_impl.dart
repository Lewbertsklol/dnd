import 'package:dnd/features/character_gamelist/domain/repositories/character_repository.dart';
import 'package:dnd/features/character_list_view/data/models/character_model.dart';
import 'package:dnd/features/character_list_view/domain/entities/competence.dart';
import 'package:dnd/features/character_list_view/domain/entities/exp.dart';
import 'package:dnd/features/character_list_view/domain/entities/game_class.dart';
import 'package:dnd/features/character_list_view/domain/entities/hp.dart';
import 'package:dnd/features/character_list_view/domain/entities/spell.dart';
import 'package:dnd/features/character_list_view/domain/entities/stats.dart';
import 'package:dnd/features/character_list_view/domain/entities/weapon.dart';
import 'package:isar/isar.dart';
import '../../../../core/db/isar_db.dart';

import '../../domain/entities/item.dart';
import '../../domain/entities/skill.dart';
import '../../domain/repositories/character_list_repository.dart';
import 'character_list_local_datasource.dart';

class CharacterListLocalDatasourceImpl implements CharacterListLocalDatasource {
  @override
  Future<List<CharacterModel>> createCharacter(ParamsForNewCharacter paramsFromScreen) async {
    const classDefenceForNewCharacter = 10;
    const expForNewCharacter = Exp();
    const hpForNewCharacter = HP();
    final gameClassFromScreen = GameClass(
      gameClassType: paramsFromScreen.gameClassType,
      hitDices: const [],
      spells: const [],
      skills: const [],
    );
    final statsForNewCharacter = <Stat>[];
    for (StatType statType in StatType.values) {
      statsForNewCharacter.add(Stat(statType: statType));
    }
    final competencesForNewCharacter = <Competence>[];
    for (CompetenceType competenceType in CompetenceType.values) {
      competencesForNewCharacter.add(Competence(competenceType: competenceType));
    }
    final CharacterModel newCharacter = CharacterModel(
      name: paramsFromScreen.name,
      race: paramsFromScreen.race,
      sex: paramsFromScreen.sex,
      backstory: paramsFromScreen.backstory,
      cd: classDefenceForNewCharacter,
      exp: expForNewCharacter,
      hp: hpForNewCharacter,
      stats: statsForNewCharacter,
      competences: competencesForNewCharacter,
      weapons: [
        Weapon(
            name: "${paramsFromScreen.name}'s palka",
            typeDamage: 'typeDamage',
            distance: 5,
            master: false,
            dices: const [DiceType.D6, DiceType.D4],
            weaponType: WeaponType.MELEE,
            bonusAttackChance: 0,
            bonusAttackDamage: 0,
            description: 'description')
      ],
      items: [
        Item(
          name: "${paramsFromScreen.name}'s Bulka",
          description: 'description',
          itemType: ItemType.FOOD,
        )
      ],
      gameClasses: [
        gameClassFromScreen,
      ],
    );

    await _writeCharacter(newCharacter);
    Future<List<CharacterModel>> characterList = getCharacterList();
    return Future.value(characterList);
  }

  @override
  Future<List<CharacterModel>> deleteCharacter(String characterName) async {
    final isar = Isar.getInstance();
    if (isar == null) return [];

    await isar.writeTxn(() async {
      await isar.collection<CharacterEntities>().filter().nameEqualTo(characterName).deleteAll();
      await isar.collection<ExpEntities>().filter().characterNameEqualTo(characterName).deleteAll();
      await isar.collection<HpEntities>().filter().characterNameEqualTo(characterName).deleteAll();
      await isar.collection<StatEntities>().filter().characterNameEqualTo(characterName).deleteAll();
      await isar.collection<WeaponEntities>().filter().characterNameEqualTo(characterName).deleteAll();
      await isar.collection<CompetenceEntities>().filter().characterNameEqualTo(characterName).deleteAll();
      await isar.collection<ItemEntities>().filter().characterNameEqualTo(characterName).deleteAll();
      await isar.collection<GameClassEntities>().filter().characterNameEqualTo(characterName).deleteAll();
      await isar.collection<SkillEntities>().filter().characterNameEqualTo(characterName).deleteAll();
      await isar.collection<SpellEntities>().filter().characterNameEqualTo(characterName).deleteAll();
    });
    Future<List<CharacterModel>> characterList = getCharacterList();
    return Future.value(characterList);
  }

  @override
  Future<List<CharacterModel>> getCharacterList() async {
    final isar = Isar.getInstance();
    if (isar == null) return [];

    final List<CharacterModel> characterList = [];
    final characterNames = await isar.collection<CharacterEntities>().where().findAll();

    for (int i = 0; i < characterNames.length; i++) {
      characterList.add(await getCharacter(characterNames[i].name));
    }
    return Future.value(characterList);
  }

  @override
  Future<CharacterModel> getCharacter(String characterName) async {
    final isar = Isar.getInstance()!;

    CharacterEntities characterEntities = (await isar.collection<CharacterEntities>().filter().nameEqualTo(characterName).findAll()).first;
    ExpEntities exp = (await isar.collection<ExpEntities>().filter().characterNameEqualTo(characterName).findAll()).first;
    HpEntities hp = (await isar.collection<HpEntities>().filter().characterNameEqualTo(characterName).findAll()).first;
    List<StatEntities> stats = await isar.collection<StatEntities>().filter().characterNameEqualTo(characterName).findAll();
    List<CompetenceEntities> competences = await isar.collection<CompetenceEntities>().filter().characterNameEqualTo(characterName).findAll();
    List<WeaponEntities> weapons = await isar.collection<WeaponEntities>().filter().characterNameEqualTo(characterName).findAll();
    List<ItemEntities> items = await isar.collection<ItemEntities>().filter().characterNameEqualTo(characterName).findAll();

    List<GameClassEntities> gameClasses = await isar.collection<GameClassEntities>().filter().characterNameEqualTo(characterName).findAll();
    List<SkillEntities> skillsEntities = await isar.collection<SkillEntities>().filter().characterNameEqualTo(characterName).findAll();
    List<SpellEntities> spellsEntities = await isar.collection<SpellEntities>().filter().characterNameEqualTo(characterName).findAll();
    List<Skill> skills = skillsEntities
        .map((skillEntitie) => Skill(
              name: skillEntitie.name,
              gameClassType: skillEntitie.gameClassType,
              description: skillEntitie.description,
            ))
        .toList();
    List<Spell> spells = spellsEntities
        .map((spellEntitie) => Spell(
              name: spellEntitie.name,
              gameClassType: spellEntitie.gameClassType,
              description: spellEntitie.description,
              schoolType: spellEntitie.schoolType,
              components: spellEntitie.components,
              spellLevelType: spellEntitie.spellLevelType,
              distance: spellEntitie.distance,
              castTime: spellEntitie.castTime,
              durationTime: spellEntitie.durationTime,
              prepared: spellEntitie.prepared,
            ))
        .toList();

    final character = CharacterModel(
      name: characterEntities.name,
      race: characterEntities.race,
      sex: characterEntities.sex,
      backstory: characterEntities.backstory,
      cd: characterEntities.cd,
      exp: Exp(value: exp.value),
      hp: HP(maxHP: hp.maxHP, currHP: hp.currHP, maxBonusHP: hp.maxBonusHP, currBonusHP: hp.currBonusHP),
      stats: stats
          .map((statEntitie) => Stat(
                statType: statEntitie.statType,
                value: statEntitie.value,
                saveThrowMastered: statEntitie.saveThrowMastered,
              ))
          .toList(),
      competences: competences
          .map((competenceEntitie) => Competence(
                competenceType: competenceEntitie.competenceType,
                mastered: competenceEntitie.mastered,
                competenced: competenceEntitie.competenced,
              ))
          .toList(),
      weapons: weapons
          .map((weaponEntitie) => Weapon(
              master: weaponEntitie.master,
              name: weaponEntitie.name,
              typeDamage: weaponEntitie.typeDamage,
              distance: weaponEntitie.distance,
              dices: weaponEntitie.dices,
              weaponType: weaponEntitie.weaponType,
              bonusAttackChance: weaponEntitie.bonusAttackChance,
              bonusAttackDamage: weaponEntitie.bonusAttackDamage,
              description: weaponEntitie.description))
          .toList(),
      items: items
          .map((itemEntitie) => Item(
                name: itemEntitie.name,
                description: itemEntitie.description,
                itemType: itemEntitie.itemType,
              ))
          .toList(),
      gameClasses: gameClasses
          .map((gameClassEntitie) => GameClass(
                classLevel: gameClassEntitie.classLevel,
                gameClassType: gameClassEntitie.gameClassType,
                hitDices: gameClassEntitie.hitDices,
                spells: spells.where((spell) => spell.gameClassType == gameClassEntitie.gameClassType).toList(),
                skills: skills.where((skill) => skill.gameClassType == gameClassEntitie.gameClassType).toList(),
              ))
          .toList(),
    );
    return Future.value(character);
  }

  @override
  Future<CharacterModel> updateCharacter(NewParams params) async {
    final character = await getCharacter(params.characterName);
    await deleteCharacter(character.name);

    final updatedCharacter = character.copyWith(
      name: params.newName,
      customNameOfMulticlass: params.customNameOfMulticlass,
      cd: params.cd,
      exp: params.exp,
      hp: params.hp,
      stats: params.stats,
      weapons: params.weapons,
      competences: params.competences,
      items: params.items,
      gameClasses: params.gameClasses,
    );

    await _writeCharacter(updatedCharacter);
    return updatedCharacter;
  }

  Future<void> _writeCharacter(CharacterModel character) async {
    final isar = Isar.getInstance();
    if (isar == null) return;

    CharacterEntities characterEntities = CharacterEntities(
      name: character.name,
      race: character.race,
      sex: character.sex,
      backstory: character.backstory,
      cd: character.cd,
    );
    ExpEntities exp = ExpEntities(
      characterName: character.name,
      value: character.exp.value,
    );
    HpEntities hp = HpEntities(
      characterName: character.name,
      currHP: character.hp.currHP,
      maxHP: character.hp.maxHP,
      currBonusHP: character.hp.currBonusHP,
      maxBonusHP: character.hp.maxBonusHP,
    );
    final List<WeaponEntities> weapons = [];
    for (Weapon weapon in character.weapons) {
      weapons.add(WeaponEntities(
        characterName: character.name,
        name: weapon.name,
        typeDamage: weapon.typeDamage,
        distance: weapon.distance,
        master: weapon.master,
        dices: weapon.dices,
        weaponType: weapon.weaponType,
        bonusAttackChance: weapon.bonusAttackChance,
        bonusAttackDamage: weapon.bonusAttackDamage,
        description: weapon.description,
      ));
    }
    final List<StatEntities> stats = [];
    for (Stat stat in character.stats) {
      stats.add(StatEntities(
        characterName: character.name,
        statType: stat.statType,
        value: stat.value,
        saveThrowMastered: stat.saveThrowMastered,
      ));
    }
    final List<CompetenceEntities> competences = [];
    for (Competence competence in character.competences) {
      competences.add(CompetenceEntities(
        characterName: character.name,
        competenceType: competence.competenceType,
        mastered: competence.mastered,
        competenced: competence.competenced,
      ));
    }

    final List<ItemEntities> items = [];
    for (Item item in character.items) {
      items.add(ItemEntities(
        characterName: character.name,
        name: item.name,
        description: item.description,
        itemType: item.itemType,
      ));
    }

    final List<GameClassEntities> gameClasses = [];
    final List<SkillEntities> skills = [];
    final List<SpellEntities> spells = [];
    for (GameClass gameClass in character.gameClasses) {
      gameClasses.add(GameClassEntities(
        characterName: character.name,
        gameClassType: gameClass.gameClassType,
        classLevel: gameClass.classLevel,
        hitDices: gameClass.hitDices,
      ));
      gameClass.skills.forEach((skill) => skills.add(SkillEntities(
            characterName: character.name,
            name: skill.name,
            gameClassType: skill.gameClassType,
            description: skill.description,
          )));
      gameClass.spells.forEach((spell) => spells.add(SpellEntities(
            characterName: character.name,
            gameClassType: spell.gameClassType,
            name: spell.name,
            description: spell.description,
            schoolType: spell.schoolType,
            spellLevelType: spell.spellLevelType,
            components: spell.components,
            prepared: spell.prepared,
            distance: spell.distance,
            castTime: spell.castTime,
            durationTime: spell.durationTime,
          )));
    }

    await isar.writeTxn(() async {
      await isar.collection<CharacterEntities>().put(characterEntities);
      await isar.collection<ExpEntities>().put(exp);
      await isar.collection<HpEntities>().put(hp);
      await isar.collection<StatEntities>().putAll(stats);
      await isar.collection<WeaponEntities>().putAll(weapons);
      await isar.collection<CompetenceEntities>().putAll(competences);
      await isar.collection<ItemEntities>().putAll(items);
      await isar.collection<GameClassEntities>().putAll(gameClasses);
      await isar.collection<SkillEntities>().putAll(skills);
      await isar.collection<SpellEntities>().putAll(spells);
    });
  }
}
