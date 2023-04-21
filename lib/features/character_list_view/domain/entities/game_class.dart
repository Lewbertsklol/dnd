// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: constant_identifier_names

import 'package:equatable/equatable.dart';

import 'skill.dart';
import 'spell.dart';

enum GameClassType { ARTIFICIER, BARBARIAN, BARD, CLERIC, DRUID, FIGHTER, MONK, PALADIN, RANGER, ROGUE, SORCERER, WARLOCK, WIZARD }

enum DiceType { D4, D6, D8, D10, D12, D20, D100 }

class GameClass extends Equatable {
  final GameClassType gameClassType;
  final int classLevel;
  final List<DiceType> hitDices;
  final List<Spell> spells;
  final List<Skill> skills;
  const GameClass({
    required this.gameClassType,
    this.classLevel = 1,
    required this.hitDices,
    required this.spells,
    required this.skills,
  });
  @override
  List<Object?> get props => [gameClassType, classLevel, spells, skills, hitDices];
}
