import 'package:dnd/features/character_list_view/domain/entities/character.dart';

import '../../domain/repositories/character_list_repository.dart';
import '../datasources/character_list_local_datasource.dart';

class CharacterListRepositoryImpl implements CharacterListRepository {
  final CharacterListLocalDatasource localDatasource;

  CharacterListRepositoryImpl({required this.localDatasource});

  @override
  List<Character> createCharacter(ParamsForNewCharacter params)  => localDatasource.createCharacter(params);

  @override
  List<Character> deleteCharacter(String characterName) => localDatasource.deleteCharacter(characterName);

  @override
  List<Character> getCharacterList() => localDatasource.getCharacterList();
  
}
