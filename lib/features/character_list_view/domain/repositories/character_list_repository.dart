import 'package:dnd/features/character_list_view/domain/entities/character.dart';

abstract class CharacterListRepository {
  Future<List<Character>> getCharacterList();
  Future<List<Character>> createCharacter(ParamsForNewCharacter params);
  Future<List<Character>> deleteCharacter(String characterName);
}

class ParamsForNewCharacter {
  final String name;
  final String race;
  final String sex;
  final String backstory;

  ParamsForNewCharacter({required this.name, required this.race, required this.sex, required this.backstory});
}
