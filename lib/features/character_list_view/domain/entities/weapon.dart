// ignore_for_file: constant_identifier_names
import 'package:equatable/equatable.dart';

enum WeaponType { MELEE, RANGE, FENCING }

class Weapon extends Equatable {
  final String name;
  final String typeDamage;
  final int distance;
  final bool master;
  final String dice;
  final WeaponType weaponType;
  final int bonusAttackChance;
  final int bonusAttackDamage;
  final String description;

  const Weapon({
    required this.name,
    required this.typeDamage,
    required this.distance,
    this.master = false,
    required this.dice,
    required this.weaponType,
    required this.bonusAttackChance,
    required this.bonusAttackDamage,
    required this.description,
  });

  @override
  List<Object?> get props => [name, master, typeDamage, distance, weaponType, bonusAttackChance, bonusAttackDamage, description, dice];

  @override
  bool? get stringify => true;
}
