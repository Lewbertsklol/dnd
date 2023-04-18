import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'dice_roll_event.dart';
part 'dice_roll_state.dart';

class DiceRollBloc extends Bloc<DiceRollEvent, DiceRollState> {
  DiceRollBloc() : super(DiceRollInitial()) {
    on<DiceRollEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
