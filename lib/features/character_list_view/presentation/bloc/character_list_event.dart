// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'character_list_bloc.dart';

abstract class CharacterListEvent {
  const CharacterListEvent();
}

class GetCharacterListEvent extends CharacterListEvent {
  final NoParams noParams;

  const GetCharacterListEvent(
    this.noParams,
  );
}

class CreateCharacterEvent extends CharacterListEvent {
  final ParamsForNewCharacter createParams;

  const CreateCharacterEvent(
    this.createParams,
  );
}

class DeleteCharacterEvent extends CharacterListEvent {
  final String characterName;
  const DeleteCharacterEvent({
    required this.characterName,
  });
}

