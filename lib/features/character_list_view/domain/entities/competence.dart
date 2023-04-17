// ignore_for_file: constant_identifier_names

import 'package:dnd/features/character_list_view/domain/entities/stats.dart';
import 'package:equatable/equatable.dart';

enum CompetenceType {
  ACROBATICS,
  ANALISYS,
  ATHLETICS,
  ATTENTION,
  SURVIVAL,
  PERFOMANCE,
  HARASSMENT,
  HISTORY,
  FAST_HANDS,
  MAGIC,
  MEDICINE,
  LIE,
  NATURE,
  INSIGHT,
  RELIGION,
  STEALTH,
  PERSUASION,
  ANIMAL_CARE,
}

class Competence extends Equatable {
  final CompetenceType competenceType;
  final StatType statTypeScale;
  final bool mastered;
  final bool competenced;

  const Competence({
    required this.competenceType,
    required this.statTypeScale,
    this.mastered = false,
    this.competenced = false,
  });

  @override
  List<Object?> get props => [competenceType, statTypeScale, mastered, competenced];

  @override
  bool? get stringify => true;
}
