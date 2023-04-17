import 'package:dnd/features/character_gamelist/domain/repositories/character_repository.dart';

import '../../domain/repositories/character_list_repository.dart';
import '../models/character_model.dart';

abstract class CharacterListLocalDatasource {
  Future<List<CharacterModel>> getCharacterList();
  Future<List<CharacterModel>> createCharacter(ParamsForNewCharacter params);
  Future<List<CharacterModel>> deleteCharacter(String characterName);
  Future<CharacterModel> getCharacter(String characterName);
  Future<CharacterModel> updateCharacter(NewParams params);
}
