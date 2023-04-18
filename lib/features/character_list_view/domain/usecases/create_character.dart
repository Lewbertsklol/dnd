import 'package:dnd/core/usecases/usecases.dart';
import 'package:dnd/features/character_list_view/domain/entities/character.dart';
import 'package:dnd/features/character_list_view/domain/repositories/character_list_repository.dart';


class CreateCharacter implements UseCase<List<Character>, ParamsForNewCharacter> {
  final CharacterListRepository repository;

  CreateCharacter(this.repository);

  @override
  List<Character> call(ParamsForNewCharacter params)  =>  repository.createCharacter(params);
}