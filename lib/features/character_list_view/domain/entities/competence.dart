// ignore_for_file: constant_identifier_names

import 'stats.dart';
import 'package:equatable/equatable.dart';

enum CompetenceType {
  ACROBATICS(statTypeScale: StatType.DEX),
  ANALISYS(statTypeScale: StatType.INT),
  ATHLETICS(statTypeScale: StatType.STR),
  ATTENTION(statTypeScale: StatType.WIS),
  SURVIVAL(statTypeScale: StatType.WIS),
  PERFOMANCE(statTypeScale: StatType.CHR),
  HARASSMENT(statTypeScale: StatType.CHR),
  HISTORY(statTypeScale: StatType.INT),
  FAST_HANDS(statTypeScale: StatType.DEX),
  MAGIC(statTypeScale: StatType.INT),
  MEDICINE(statTypeScale: StatType.WIS),
  LIE(statTypeScale: StatType.CHR),
  NATURE(statTypeScale: StatType.INT),
  INSIGHT(statTypeScale: StatType.WIS),
  RELIGION(statTypeScale: StatType.INT),
  STEALTH(statTypeScale: StatType.DEX),
  PERSUASION(statTypeScale: StatType.CHR),
  ANIMAL_CARE(statTypeScale: StatType.WIS);

  final StatType statTypeScale;
  const CompetenceType({required this.statTypeScale});
}

class Competence extends Equatable {
  final CompetenceType competenceType;
  final bool mastered;
  final bool competenced;

  const Competence({
    required this.competenceType,
    this.mastered = false,
    this.competenced = false,
  });

  @override
  List<Object?> get props => [
        competenceType,
        mastered,
        competenced,
      ];

  @override
  bool? get stringify => true;
}
