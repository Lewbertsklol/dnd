import 'package:equatable/equatable.dart';

import 'package:dnd/features/character_list_view/domain/entities/competence.dart';

import 'exp.dart';
import 'game_class.dart';
import 'hp.dart';
import 'item.dart';
import 'stats.dart';
import 'weapon.dart';

class Character extends Equatable {
  final String name;
  final String race;
  final String sex;
  final String backstory;
  final String? customNameOfMulticlass;
  final int cd;
  final Exp exp;
  final HP hp;
  final List<Stat> stats;
  final List<Competence> competences;
  final List<Weapon> weapons;
  final List<Item> items;
  final List<GameClass> gameClasses;

  const Character({
    required this.name,
    required this.race,
    required this.sex,
    required this.backstory,
    this.customNameOfMulticlass,
    required this.cd,
    required this.exp,
    required this.hp,
    required this.stats,
    required this.competences,
    required this.weapons,
    required this.items,
    required this.gameClasses,
  });
  int get sumOfAllClassLevels => gameClasses.map((gameClass) => gameClass.classLevel).reduce((value, element) => value + element);
  int get freeLevelPoint => exp.level - sumOfAllClassLevels;
  int get initiative => getStatByType(StatType.DEX).modificator;
  int get bonusModificator => ((exp.level - 1) ~/ 4) + 2;
  int getValueOfCompetenceByType(CompetenceType competenceType) => getCompetenceByType(competenceType).competenced
      ? getStatByType(competenceType.statTypeScale).modificator + 2 * bonusModificator
      : getCompetenceByType(competenceType).mastered
          ? getStatByType(competenceType.statTypeScale).modificator + bonusModificator
          : getStatByType(competenceType.statTypeScale).modificator;

  Stat getStatByType(StatType statType) => stats.firstWhere((stat) => stat.statType == statType);
  Competence getCompetenceByType(CompetenceType competenceType) => competences.firstWhere((competence) => competence.competenceType == competenceType);
  int getSaveThrowValue(StatType statType) =>
      getStatByType(statType).saveThrowMastered ? getStatByType(statType).modificator + bonusModificator : getStatByType(statType).modificator;
  Stat _statUsedByWeapon(Weapon weapon) {
    switch (weapon.weaponType) {
      case WeaponType.MELEE:
        return getStatByType(StatType.STR);
      case WeaponType.RANGE:
        return getStatByType(StatType.DEX);
      case WeaponType.FENCING:
        return getStatByType(StatType.STR).modificator > getStatByType(StatType.DEX).modificator ? getStatByType(StatType.STR) : getStatByType(StatType.DEX);
    }
  }

  int getAttackChanceWithWeapon(Weapon weapon) => weapon.master
      ? _statUsedByWeapon(weapon).modificator + bonusModificator + weapon.bonusAttackChance
      : _statUsedByWeapon(weapon).modificator + weapon.bonusAttackChance;
  int getAttackDamageWithWeapon(Weapon weapon) => _statUsedByWeapon(weapon).modificator + weapon.bonusAttackDamage;
  List<Item> getItemsByType(ItemType itemType) => items.where((item) => item.itemType == itemType).toList();
  @override
  List<Object?> get props => [name, race, sex, backstory, exp, hp, stats, competences, weapons, items, gameClasses];
  @override
  bool? get stringify => true;
}
