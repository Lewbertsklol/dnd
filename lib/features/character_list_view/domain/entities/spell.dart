// ignore_for_file: constant_identifier_names

import 'package:equatable/equatable.dart';

enum SchoolType { ABJURATION, ALTERATION, CONJURATION, DIVINATION, ENCHANTMENT, ILLUSION, INVOCATION, NECROMANCY }

enum SpellLevelType { CHARM, LEVEL_1, LEVEL_2, LEVEL_3, LEVEL_4, LEVEL_5, LEVEL_6, LEVEL_7, LEVEL_8, LEVEL_9, LEVEL_10 }

enum Component { V, S, M }

class Spell extends Equatable {
  final String name;
  final SchoolType schoolType;
  final SpellLevelType spellLevelType;
  final List<Component> components;
  final bool prepared;
  final int distance;
  final String castTime;
  final String durationTime;
  final String description;
  const Spell({
    required this.name,
    required this.description,
    this.prepared = false,
    required this.schoolType,
    required this.spellLevelType,
    required this.distance,
    required this.castTime,
    required this.durationTime,
    required this.components,
  });

  @override
  List<Object?> get props => [name, description, prepared, schoolType, spellLevelType, distance, castTime, durationTime, components];

  @override
  bool? get stringify => true;
}
