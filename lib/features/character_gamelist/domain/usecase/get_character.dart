import 'package:dnd/core/usecases/usecases.dart';
import 'package:dnd/features/character_list_view/domain/entities/character.dart';

import '../repositories/character_repository.dart';



class GetCharacter implements UseCase<Character, String> {
  final CharacterRepository repository;

  GetCharacter(this.repository);

  @override
  Future<Character> call(String characterName) async => await repository.getCharacter(characterName);
}
