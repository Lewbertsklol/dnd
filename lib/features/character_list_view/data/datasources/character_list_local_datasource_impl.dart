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
  Future<List<CharacterModel>> createCharacter(ParamsForNewCharacter paramsFromScreen) async {
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
            master: false,
            dice: 'dice',
            weaponType: WeaponType.MELEE,
            bonusAttackChance: 0,
            bonusAttackDamage: 0,
            description: 'description')
      ],
    );

    await _writeCharacter(newCharacter);
    Future<List<CharacterModel>> characterList = getCharacterList();
    return characterList;
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
    });
    Future<List<CharacterModel>> characterList = getCharacterList();
    return characterList;
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
    return characterList;
  }

  @override
  Future<CharacterModel> getCharacter(String characterName) async {
    final isar = Isar.getInstance()!;

    CharacterEntities? characterEntities = await isar.collection<CharacterEntities>().filter().nameEqualTo(characterName).findFirst();
    ExpEntities? exp = await isar.collection<ExpEntities>().filter().characterNameEqualTo(characterName).findFirst();
    HpEntities? hp = await isar.collection<HpEntities>().filter().characterNameEqualTo(characterName).findFirst();
    List<StatEntities> stats = await isar.collection<StatEntities>().filter().characterNameEqualTo(characterName).findAll();
    List<CompetenceEntities> competences = await isar.collection<CompetenceEntities>().filter().characterNameEqualTo(characterName).findAll();
    List<WeaponEntities> weapons = await isar.collection<WeaponEntities>().filter().characterNameEqualTo(characterName).findAll();

    return CharacterModel(
      name: characterEntities?.name ?? 'null',
      race: characterEntities?.race ?? 'null',
      sex: characterEntities?.sex ?? 'null',
      backstory: characterEntities?.backstory ?? 'null',
      cd: characterEntities?.cd ?? 0,
      exp: Exp(value: exp?.value ?? 0),
      hp: HP(maxHP: hp?.maxHP ?? 0, currHP: hp?.currHP ?? 0, maxBonusHP: hp?.maxBonusHP ?? 0, currBonusHP: hp?.currBonusHP ?? 0),
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
  }

  @override
  Future<CharacterModel> updateCharacter(NewParams params) async {
    final character = await getCharacter(params.characterName);
    await deleteCharacter(character.name);

    final updatedCharacter = character.copyWith(
      name: params.newName,
      cd: params.cd,
      exp: params.exp,
      hp: params.hp,
      stats: params.stats,
      weapons: params.weapons,
      competences: params.competences,
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
        mastered: weapon.master,
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

    await isar.writeTxn(() async {
      await isar.collection<CharacterEntities>().put(characterEntities);
      await isar.collection<ExpEntities>().put(exp);
      await isar.collection<HpEntities>().put(hp);
      await isar.collection<StatEntities>().putAll(stats);
      await isar.collection<WeaponEntities>().putAll(weapons);
      await isar.collection<CompetenceEntities>().putAll(competences);
    });
  }
}
