import 'package:dnd/core/usecases/usecases.dart';
import 'package:dnd/features/character_gamelist/domain/repositories/character_repository.dart';
import 'package:dnd/features/character_list_view/domain/entities/character.dart';

class UpdateCharacter implements UseCase<Character, NewParams> {
  final CharacterRepository repository;

  UpdateCharacter(this.repository);

  @override
  Future<Character> call(NewParams newParams) async => await repository.updateCharacter(newParams);
}
