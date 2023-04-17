// ignore_for_file: constant_identifier_names
import 'package:equatable/equatable.dart';

enum StatType { STR, DEX, VIT, INT, WIS, CHR }

class Stat extends Equatable {
  final StatType statType;
  final int value;
  final bool saveThrowMastered;

  const Stat({required this.statType, this.value = 8, this.saveThrowMastered = false});

  int get modificator => ((value - 10) / 2).floor();

  @override
  List<Object?> get props => [statType, value, modificator, saveThrowMastered];

  @override
  bool? get stringify => true;
}


