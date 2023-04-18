import 'package:equatable/equatable.dart';

import 'package:dnd/features/character_list_view/domain/entities/competence.dart';

import 'exp.dart';
import 'hp.dart';
//import 'inventory.dart';
import 'stats.dart';
import 'weapon.dart';

class Character extends Equatable {
  final String name;
  final String race;
  final String sex;
  final String backstory;
  final int cd;
  final Exp exp;
  final HP hp;
  final List<Stat> stats;
  final List<Weapon> weapons;
  final List<Competence> competences;
  //Inventory? inventory;
  //final List<GameClass> gameClasses;

  const Character({
    required this.name,
    required this.race,
    required this.sex,
    required this.backstory,
    required this.cd,
    required this.exp,
    required this.hp,
    required this.stats,
    required this.weapons,
    required this.competences,
    //required this.inventory,
  });
  int get levelPoint => exp.level;
  int get initiative => getStatByType(StatType.DEX).modificator;
  int get bonusModificator => ((exp.level - 1) ~/ 4) + 2;

  int getValueOfCompetenceByType(CompetenceType competenceType) => getCompetenceByType(competenceType).competenced
      ? getStatByType(getCompetenceByType(competenceType).statTypeScale).modificator + 2 * bonusModificator
      : getCompetenceByType(competenceType).mastered
          ? getStatByType(getCompetenceByType(competenceType).statTypeScale).modificator + bonusModificator
          : getStatByType(getCompetenceByType(competenceType).statTypeScale).modificator;

  Stat getStatByType(StatType statType) => stats.firstWhere((stat) => stat.statType == statType);
  Competence getCompetenceByType(CompetenceType competenceType) => competences.firstWhere((competence) => competence.competenceType == competenceType);

  int getSaveThrowValue(StatType statType) {
    for (Stat stat in stats) {
      if (stat.statType == statType) return stat.saveThrowMastered ? stat.modificator + bonusModificator : stat.modificator;
    }
    return -1000;
  }

  int _whichStatUsesWeapon(Weapon weapon) {
    if (weapon.weaponType == WeaponType.MELEE) return getStatByType(StatType.STR).modificator;
    if (weapon.weaponType == WeaponType.RANGE) return getStatByType(StatType.DEX).modificator;
    if (weapon.weaponType == WeaponType.FENCING) {
      return getStatByType(StatType.DEX).modificator > getStatByType(StatType.STR).modificator
          ? getStatByType(StatType.DEX).modificator
          : getStatByType(StatType.STR).modificator;
    }
    return -1000;
  }

  int getAttackChanceWithWeapon(Weapon weapon) =>
      weapon.master ? _whichStatUsesWeapon(weapon) + bonusModificator + weapon.bonusAttackChance : _whichStatUsesWeapon(weapon) + weapon.bonusAttackChance;
  int getAttackDamageWithWeapon(Weapon weapon) => _whichStatUsesWeapon(weapon) + weapon.bonusAttackDamage;
  @override
  List<Object?> get props => [name, stats, competences, weapons];
  @override
  bool? get stringify => true;
}
