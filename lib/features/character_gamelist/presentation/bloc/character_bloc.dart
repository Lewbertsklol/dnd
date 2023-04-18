import 'package:dnd/features/character_gamelist/domain/repositories/character_repository.dart';
import 'package:dnd/features/character_gamelist/domain/usecase/get_character.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../character_list_view/domain/entities/character.dart';
import '../../domain/usecase/update_character.dart';

part 'character_event.dart';
part 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  GetCharacter getCharacter;
  UpdateCharacter updateCharacter;
  CharacterBloc({
    required this.getCharacter,
    required this.updateCharacter,
  }) : super(CharacterInitial()) {
    on<GetCharacterEvent>(_getCharacter);
    on<UpdateCharacterEvent>(_updateCharacter);
  }

  Future<void> _getCharacter(GetCharacterEvent event, Emitter<CharacterState> emit) async {
    final character = await getCharacter(event.characterName);
    emit(CharacterLoaded(character));
  }

  Future<void> _updateCharacter(UpdateCharacterEvent event, Emitter<CharacterState> emit) async {
    final character = await updateCharacter(event.params);
    emit(CharacterLoaded(character));
    //print('Я заэмитил нового персонажа');
  }
}
