part of 'character_bloc.dart';

abstract class CharacterEvent extends Equatable {
  const CharacterEvent();

  @override
  List<Object> get props => [];
}

class GetCharacterEvent extends CharacterEvent {
  final String characterName;

  const GetCharacterEvent(
    this.characterName,
  );
}

class UpdateCharacterEvent extends CharacterEvent {
  final NewParams params;
  const UpdateCharacterEvent({
    required this.params,
  });
}
