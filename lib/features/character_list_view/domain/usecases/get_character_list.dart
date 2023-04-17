import 'package:dnd/core/usecases/usecases.dart';
import 'package:dnd/features/character_list_view/domain/entities/character.dart';
import 'package:dnd/features/character_list_view/domain/repositories/character_list_repository.dart';


class GetCharacterList implements UseCase<List<Character>, NoParams> {
  final CharacterListRepository repository;

  GetCharacterList(this.repository);

  @override
  Future<List<Character>> call(NoParams params) async => await repository.getCharacterList();
}