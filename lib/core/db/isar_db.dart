import 'package:dnd/features/character_list_view/domain/entities/weapon.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

import '../../features/character_list_view/domain/entities/competence.dart';
import '../../features/character_list_view/domain/entities/stats.dart';

part 'isar_db.g.dart';

@Collection(ignore: {'props'})
class CharacterEntities extends Equatable {
  final Id id = Isar.autoIncrement;
  final String name;
  final String race;
  final String sex;
  final String backstory;
  final int cd;

  const CharacterEntities({required this.name, required this.race, required this.sex, required this.backstory, required this.cd});

  @override
  List<Object?> get props => [name, race, sex, backstory, cd];
}

@Collection(ignore: {'props'})
class ExpEntities extends Equatable {
  final Id id = Isar.autoIncrement;
  final String characterName;
  final int value;

  const ExpEntities({required this.characterName, required this.value});

  @override
  List<Object?> get props => [value];
}

@Collection(ignore: {'props'})
class HpEntities extends Equatable {
  final Id id = Isar.autoIncrement;
  final String characterName;
  final int maxHP;
  final int currHP;
  final int maxBonusHP;
  final int currBonusHP;

  const HpEntities({required this.characterName, required this.maxHP, required this.currHP, required this.maxBonusHP, required this.currBonusHP});

  @override
  List<Object?> get props => [currHP, maxHP, currBonusHP, maxBonusHP];
}

@Collection(ignore: {'props'})
class StatEntities extends Equatable {
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

  @override
  List<Object?> get props => [statType, value, saveThrowMastered];
}

@Collection(ignore: {'props'})
class WeaponEntities extends Equatable {
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

  const WeaponEntities({
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

  @override
  List<Object?> get props => [name, mastered];
}

@Collection(ignore: {'props'})
class CompetenceEntities extends Equatable{
  final Id id = Isar.autoIncrement;
  final String characterName;
  @enumerated
  final CompetenceType competenceType;
  @enumerated
  final StatType statTypeScale;
  final bool mastered;
  final bool competenced;

  const CompetenceEntities({
    required this.characterName,
    required this.competenceType,
    required this.statTypeScale,
    required this.mastered,
    required this.competenced,
  });

  @override
  List<Object?> get props => [competenceType, statTypeScale, mastered, competenced];
}
