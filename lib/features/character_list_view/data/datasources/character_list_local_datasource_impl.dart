import 'package:dnd/features/character_gamelist/domain/repositories/character_repository.dart';
import 'package:dnd/features/character_list_view/data/models/character_model.dart';
import 'package:dnd/features/character_list_view/domain/entities/competence.dart';
import 'package:dnd/features/character_list_view/domain/entities/exp.dart';
import 'package:dnd/features/character_list_view/domain/entities/hp.dart';
import 'package:dnd/features/character_list_view/domain/entities/stats.dart';
import 'package:dnd/features/character_list_view/domain/entities/weapon.dart';
import 'package:isar/isar.dart';
import '../../../../core/db/isar_db.dart';

import '../../domain/repositories/character_list_repository.dart';
import 'character_list_local_datasource.dart';

class CharacterListLocalDatasourceImpl implements CharacterListLocalDatasource {
  @override
  List<CharacterModel> createCharacter(ParamsForNewCharacter paramsFromScreen) {
    const classDefenceForNewCharacter = 10;
    const expForNewCharacter = Exp();
    const hpForNewCharacter = HP();
    final statsForNewCharacter = <Stat>[];
    for (StatType statType in StatType.values) {
      statsForNewCharacter.add(Stat(statType: statType));
    }
    final competencesForNewCharacter = <Competence>[];
    competencesForNewCharacter.add(const Competence(competenceType: CompetenceType.ACROBATICS, statTypeScale: StatType.DEX));
    competencesForNewCharacter.add(const Competence(competenceType: CompetenceType.ANALISYS, statTypeScale: StatType.INT));
    competencesForNewCharacter.add(const Competence(competenceType: CompetenceType.ATHLETICS, statTypeScale: StatType.STR));
    competencesForNewCharacter.add(const Competence(competenceType: CompetenceType.ATTENTION, statTypeScale: StatType.WIS));
    competencesForNewCharacter.add(const Competence(competenceType: CompetenceType.SURVIVAL, statTypeScale: StatType.WIS));
    competencesForNewCharacter.add(const Competence(competenceType: CompetenceType.PERFOMANCE, statTypeScale: StatType.CHR));
    competencesForNewCharacter.add(const Competence(competenceType: CompetenceType.HARASSMENT, statTypeScale: StatType.CHR));
    competencesForNewCharacter.add(const Competence(competenceType: CompetenceType.HISTORY, statTypeScale: StatType.INT));
    competencesForNewCharacter.add(const Competence(competenceType: CompetenceType.FAST_HANDS, statTypeScale: StatType.DEX));
    competencesForNewCharacter.add(const Competence(competenceType: CompetenceType.MAGIC, statTypeScale: StatType.INT));
    competencesForNewCharacter.add(const Competence(competenceType: CompetenceType.MEDICINE, statTypeScale: StatType.WIS));
    competencesForNewCharacter.add(const Competence(competenceType: CompetenceType.LIE, statTypeScale: StatType.CHR));
    competencesForNewCharacter.add(const Competence(competenceType: CompetenceType.NATURE, statTypeScale: StatType.INT));
    competencesForNewCharacter.add(const Competence(competenceType: CompetenceType.INSIGHT, statTypeScale: StatType.WIS));
    competencesForNewCharacter.add(const Competence(competenceType: CompetenceType.RELIGION, statTypeScale: StatType.INT));
    competencesForNewCharacter.add(const Competence(competenceType: CompetenceType.STEALTH, statTypeScale: StatType.DEX));
    competencesForNewCharacter.add(const Competence(competenceType: CompetenceType.PERSUASION, statTypeScale: StatType.CHR));
    competencesForNewCharacter.add(const Competence(competenceType: CompetenceType.ANIMAL_CARE, statTypeScale: StatType.WIS));

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
            dice: 'dice',
            weaponType: WeaponType.MELEE,
            bonusAttackChance: 0,
            bonusAttackDamage: 0,
            description: 'description')
      ],
    );

    _writeCharacter(newCharacter);
    List<CharacterModel> characterList = getCharacterList();
    return characterList;
  }

  @override
  List<CharacterModel> deleteCharacter(String characterName) {
    final isar = Isar.getInstance();
    if (isar == null) return [];

    isar.writeTxnSync(() {
      isar.collection<CharacterEntities>().filter().nameEqualTo(characterName).deleteAll();
      isar.collection<ExpEntities>().filter().characterNameEqualTo(characterName).deleteAll();
      isar.collection<HpEntities>().filter().characterNameEqualTo(characterName).deleteAll();
      isar.collection<StatEntities>().filter().characterNameEqualTo(characterName).deleteAll();
      isar.collection<WeaponEntities>().filter().characterNameEqualTo(characterName).deleteAll();
      isar.collection<CompetenceEntities>().filter().characterNameEqualTo(characterName).deleteAll();
    });
    List<CharacterModel> characterList = getCharacterList();
    return characterList;
  }

  @override
  List<CharacterModel> getCharacterList() {
    final isar = Isar.getInstance();
    if (isar == null) return [];

    final List<CharacterModel> characterList = [];
    final characterNames = isar.collection<CharacterEntities>().where().findAllSync();

    for (int i = 0; i < characterNames.length; i++) {
      characterList.add(getCharacter(characterNames[i].name));
    }
    return characterList;
  }

  @override
  CharacterModel getCharacter(String characterName) {
    final isar = Isar.getInstance()!;

    CharacterEntities characterEntities = (isar.collection<CharacterEntities>().filter().nameEqualTo(characterName).findAllSync()).first;
    ExpEntities exp = (isar.collection<ExpEntities>().filter().characterNameEqualTo(characterName).findAllSync()).first;
    HpEntities hp = (isar.collection<HpEntities>().filter().characterNameEqualTo(characterName).findAllSync()).first;
    List<StatEntities> stats = isar.collection<StatEntities>().filter().characterNameEqualTo(characterName).findAllSync();
    List<CompetenceEntities> competences = isar.collection<CompetenceEntities>().filter().characterNameEqualTo(characterName).findAllSync();
    List<WeaponEntities> weapons = isar.collection<WeaponEntities>().filter().characterNameEqualTo(characterName).findAllSync();

    // print('Достал из БД оружие:');
    // for (WeaponEntities weapon in weapons) {
    //   print(weapon);
    // }
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
                statTypeScale: competenceEntitie.statTypeScale,
                mastered: competenceEntitie.mastered,
                competenced: competenceEntitie.competenced,
              ))
          .toList(),
      weapons: weapons
          .map((weaponEntitie) => Weapon(
              name: weaponEntitie.name,
              typeDamage: weaponEntitie.typeDamage,
              distance: weaponEntitie.distance,
              dice: weaponEntitie.dice,
              weaponType: weaponEntitie.weaponType,
              bonusAttackChance: weaponEntitie.bonusAttackChance,
              bonusAttackDamage: weaponEntitie.bonusAttackDamage,
              description: weaponEntitie.description))
          .toList(),
    );
    return character;
  }

  @override
  CharacterModel updateCharacter(NewParams params) {
    final character = getCharacter(params.characterName);
    deleteCharacter(character.name);

    final updatedCharacter = character.copyWith(
      name: params.newName,
      cd: params.cd,
      exp: params.exp,
      hp: params.hp,
      stats: params.stats,
      weapons: params.weapons,
      competences: params.competences,
    );
    // print('Обновленный персонаж');
    // print(updatedCharacter);

    _writeCharacter(updatedCharacter);
    return updatedCharacter;
  }

  void _writeCharacter(CharacterModel character) {
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
        dice: weapon.dice,
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
        statTypeScale: competence.statTypeScale,
        mastered: competence.mastered,
        competenced: competence.competenced,
      ));
    }
    // print('Положил в БД оружие:');
    // for (WeaponEntities weapon in weapons) {
    //   print(weapon);
    // }
    isar.writeTxnSync(() {
      isar.collection<CharacterEntities>().putSync(characterEntities);
      isar.collection<ExpEntities>().putSync(exp);
      isar.collection<HpEntities>().putSync(hp);
      isar.collection<StatEntities>().putAllSync(stats);
      isar.collection<WeaponEntities>().putAllSync(weapons);
      isar.collection<CompetenceEntities>().putAllSync(competences);
    });
  }
}
