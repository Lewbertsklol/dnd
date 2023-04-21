import 'package:dnd/features/character_list_view/domain/entities/game_class.dart';
import 'package:dnd/features/character_list_view/domain/entities/weapon.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

import '../../features/character_list_view/domain/entities/competence.dart';
import '../../features/character_list_view/domain/entities/item.dart';
import '../../features/character_list_view/domain/entities/spell.dart';
import '../../features/character_list_view/domain/entities/stats.dart';

part 'isar_db.g.dart';

@Collection(ignore: {'props'})
class CharacterEntities extends Equatable {
  final Id id = Isar.autoIncrement;
  @Index(replace: true, unique: true)
  final String name;
  final String race;
  final String sex;
  final String backstory;
  final String? customNameOfMulticlass;
  final int cd;
  const CharacterEntities({
    required this.name,
    required this.race,
    required this.sex,
    required this.backstory,
    this.customNameOfMulticlass,
    required this.cd,
  });
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
  @Index(replace: true, unique: true)
  final String name;
  final String typeDamage;
  final int distance;
  final bool master;
  @enumerated
  final List<DiceType> dices;
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
    required this.master,
    required this.dices,
    required this.weaponType,
    required this.bonusAttackChance,
    required this.bonusAttackDamage,
    required this.description,
  });
  @override
  List<Object?> get props => [name, master, typeDamage, distance, weaponType, bonusAttackChance, bonusAttackDamage, description];
}

@Collection(ignore: {'props'})
class CompetenceEntities extends Equatable {
  final Id id = Isar.autoIncrement;
  final String characterName;
  @enumerated
  final CompetenceType competenceType;
  final bool mastered;
  final bool competenced;
  const CompetenceEntities({
    required this.characterName,
    required this.competenceType,
    required this.mastered,
    required this.competenced,
  });
  @override
  List<Object?> get props => [competenceType, mastered, competenced];
}

@Collection(ignore: {'props'})
class ItemEntities extends Equatable {
  final Id id = Isar.autoIncrement;
  final String characterName;
  final String name;
  final String description;
  @enumerated
  final ItemType itemType;
  const ItemEntities({
    required this.characterName,
    required this.name,
    required this.description,
    required this.itemType,
  });
  @override
  List<Object?> get props => [name, description, itemType];
}

@Collection(ignore: {'props'})
class GameClassEntities extends Equatable {
  final Id id = Isar.autoIncrement;
  final String characterName;
  @enumerated
  final GameClassType gameClassType;
  final int classLevel;
  @enumerated
  final List<DiceType> hitDices;
  const GameClassEntities({
    required this.characterName,
    required this.gameClassType,
    required this.classLevel,
    required this.hitDices,
  });
  @override
  List<Object?> get props => [gameClassType, classLevel, hitDices];
}

@Collection(ignore: {'props'})
class SkillEntities extends Equatable {
  final Id id = Isar.autoIncrement;
  final String characterName;
  final String name;
  final String description;
  const SkillEntities({
    required this.characterName,
    required this.name,
    required this.description,
  });
  @override
  List<Object?> get props => [name, description];
}

@Collection(ignore: {'props'})
class SpellEntities extends Equatable {
  final Id id = Isar.autoIncrement;
  final String characterName;
  final String name;
  @enumerated
  final SchoolType schoolType;
  @enumerated
  final SpellLevelType spellLevelType;
  @enumerated
  final List<Component> components;
  final bool prepared;
  final int distance;
  final String castTime;
  final String durationTime;
  final String description;
  const SpellEntities({
    required this.characterName,
    required this.name,
    required this.description,
    required this.schoolType,
    required this.spellLevelType,
    required this.components,
    required this.prepared,
    required this.distance,
    required this.castTime,
    required this.durationTime,
  });
  @override
  List<Object?> get props => [name, schoolType, spellLevelType, components, prepared, distance, castTime, durationTime, description];
}
