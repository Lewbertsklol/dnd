
import 'package:dnd/core/usecases/usecases.dart';
import 'package:dnd/features/character_list_view/domain/entities/character.dart';
import 'package:dnd/features/character_list_view/domain/repositories/character_list_repository.dart';

class DeleteCharacter implements UseCase<List<Character>, String> {
  final CharacterListRepository repository;

  DeleteCharacter(this.repository);

  @override
  Future<List<Character>> call(String characterName) async => await repository.deleteCharacter(characterName);
}