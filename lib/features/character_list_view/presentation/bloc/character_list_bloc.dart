import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/usecases/usecases.dart';
import '../../domain/entities/character.dart';
import '../../domain/repositories/character_list_repository.dart';
import '../../domain/usecases/create_character.dart';
import '../../domain/usecases/delete_character.dart';
import '../../domain/usecases/get_character_list.dart';

part 'character_list_event.dart';
part 'character_list_state.dart';

class CharacterListBloc extends Bloc<CharacterListEvent, CharacterListState> {
  GetCharacterList getCharacterList;
  CreateCharacter createCharacter;
  DeleteCharacter deleteCharacter;
  CharacterListBloc({
    required this.getCharacterList,
    required this.createCharacter,
    required this.deleteCharacter,
  }) : super(CharacterListInitial()) {
    on<GetCharacterListEvent>(_getCharacterList);
    on<CreateCharacterEvent>(_createCharacter);
    on<DeleteCharacterEvent>(_deleteCharacter);
  }

  Future<void> _getCharacterList(GetCharacterListEvent event, Emitter<CharacterListState> emit) async {
    final characterList = await getCharacterList(event.noParams);
    emit(CharacterListLoaded(characterList));
  }

  Future<void> _createCharacter(CreateCharacterEvent event, Emitter<CharacterListState> emit) async {
    final characterList = await getCharacterList(NoParams());
    for (Character character in characterList) {
      if (character.name == event.createParams.name) return;
    }
    final newCharacterList = await createCharacter(event.createParams);
    emit(CharacterListLoaded(newCharacterList));
  }

  Future<void> _deleteCharacter(DeleteCharacterEvent event, Emitter<CharacterListState> emit) async {
    final characterList = await deleteCharacter(event.characterName);
    emit(CharacterListLoaded(characterList));
  }
}
