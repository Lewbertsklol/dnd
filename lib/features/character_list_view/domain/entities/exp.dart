import 'package:equatable/equatable.dart';

class Exp extends Equatable {
  final int value;

  const Exp({this.value = 0});

  int get level {
    if (value < 300) return 1;
    if (value < 900) return 2;
    if (value < 2700) return 3;
    if (value < 6500) return 4;
    if (value < 14000) return 5;
    if (value < 23000) return 6;
    if (value < 34000) return 7;
    if (value < 48000) return 8;
    if (value < 64000) return 9;
    if (value < 85000) return 10;
    if (value < 100000) return 11;
    if (value < 120000) return 12;
    if (value < 140000) return 13;
    if (value < 165000) return 14;
    if (value < 195000) return 15;
    if (value < 225000) return 16;
    if (value < 265000) return 17;
    if (value < 305000) return 18;
    if (value < 355000) return 19;
    return 20;
  }

  int get expToLevel {
    if (level == 1) return 300;
    if (level == 2) return 900;
    if (level == 3) return 2700;
    if (level == 4) return 6500;
    if (level == 5) return 14000;
    if (level == 6) return 23000;
    if (level == 7) return 34000;
    if (level == 8) return 48000;
    if (level == 9) return 64000;
    if (level == 10) return 85000;
    if (level == 11) return 100000;
    if (level == 12) return 120000;
    if (level == 13) return 140000;
    if (level == 14) return 165000;
    if (level == 15) return 195000;
    if (level == 16) return 225000;
    if (level == 17) return 265000;
    if (level == 18) return 305000;
    if (level == 19) return 355000;
    return value;
  }

  @override
  List<Object?> get props => [level, value, expToLevel];

  @override
  bool? get stringify => true;
}
