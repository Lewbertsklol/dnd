import 'package:dnd/features/character_gamelist/domain/repositories/character_repository.dart';

import '../../domain/repositories/character_list_repository.dart';
import '../models/character_model.dart';

abstract class CharacterListLocalDatasource {
 List<CharacterModel> getCharacterList();
  List<CharacterModel> createCharacter(ParamsForNewCharacter params);
  List<CharacterModel> deleteCharacter(String characterName);
  CharacterModel getCharacter(String characterName);
  CharacterModel updateCharacter(NewParams params);
}
