part of 'dice_roll_bloc.dart';

abstract class DiceRollState extends Equatable {
  const DiceRollState();  

  @override
  List<Object> get props => [];
}
class DiceRollInitial extends DiceRollState {}
