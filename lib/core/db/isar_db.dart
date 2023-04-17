import 'package:dnd/features/character_list_view/domain/entities/weapon.dart';
import 'package:isar/isar.dart';

import '../../features/character_list_view/domain/entities/competence.dart';
import '../../features/character_list_view/domain/entities/stats.dart';

part 'isar_db.g.dart';

@collection
class CharacterEntities {
  final Id id = Isar.autoIncrement;
  final String name;
  final String race;
  final String sex;
  final String backstory;
  final int cd;

  CharacterEntities({required this.name, required this.race, required this.sex, required this.backstory, required this.cd});
}

@collection
class ExpEntities {
  final Id id = Isar.autoIncrement;
  final String characterName;
  final int value;

  const ExpEntities({required this.characterName, required this.value});
}

@collection
class HpEntities {
  final Id id = Isar.autoIncrement;
  final String characterName;
  final int maxHP;
  final int currHP;
  final int maxBonusHP;
  final int currBonusHP;

  const HpEntities({required this.characterName, required this.maxHP, required this.currHP, required this.maxBonusHP, required this.currBonusHP});
}

@collection
class StatEntities {
  final Id id = Isar.autoIncrement;
  final String characterName;
  @enumerated
  final StatType statType;
  final int value;
  final bool saveThrowMastered;

  const StatEntities({
    required this.characterName,
    required this.statType,
    required this.value,
    required this.saveThrowMastered,
  });
}

@collection
class WeaponEntities {
  final Id id = Isar.autoIncrement;
  final String characterName;
  final String name;
  final String typeDamage;
  final int distance;
  final bool mastered;
  final String dice;
  @enumerated
  final WeaponType weaponType;
  final int bonusAttackChance;
  final int bonusAttackDamage;
  final String description;

  WeaponEntities({
    required this.characterName,
    required this.name,
    required this.typeDamage,
    required this.distance,
    required this.mastered,
    required this.dice,
    required this.weaponType,
    required this.bonusAttackChance,
    required this.bonusAttackDamage,
    required this.description,
  });
}

@collection
class CompetenceEntities {
  final Id id = Isar.autoIncrement;
  final String characterName;
  @enumerated
  final CompetenceType competenceType;
  @enumerated
  final StatType statTypeScale;
  final bool mastered;
  final bool competenced;

  CompetenceEntities({
    required this.characterName,
    required this.competenceType,
    required this.statTypeScale,
    required this.mastered,
    required this.competenced,
  });
}
