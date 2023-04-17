import 'package:equatable/equatable.dart';

class HP extends Equatable {
  final int maxHP;
  final int currHP;
  final int maxBonusHP;
  final int currBonusHP;

  const HP({this.maxHP = 1, this.currHP = 1,this.maxBonusHP = 0, this.currBonusHP = 0});

  @override
  List<Object?> get props => [maxHP, currHP, maxBonusHP, currBonusHP];

  @override
  bool? get stringify => true;
}
