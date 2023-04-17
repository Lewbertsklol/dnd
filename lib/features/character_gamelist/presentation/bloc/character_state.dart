part of 'character_bloc.dart';

abstract class CharacterState extends Equatable {
  const CharacterState();

  @override
  List<Object?> get props => [];
}

class CharacterInitial extends CharacterState {}

class CharacterLoaded extends CharacterState {
  final Character character;
  const CharacterLoaded(
    this.character,
  );

  @override
  List<Object?> get props => [character];
}
