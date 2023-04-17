import 'package:dnd/features/character_list_view/domain/entities/character.dart';

import '../../domain/repositories/character_list_repository.dart';
import '../datasources/character_list_local_datasource.dart';

class CharacterListRepositoryImpl implements CharacterListRepository {
  final CharacterListLocalDatasource localDatasource;

  CharacterListRepositoryImpl({required this.localDatasource});

  @override
  Future<List<Character>> createCharacter(ParamsForNewCharacter params) async => localDatasource.createCharacter(params);

  @override
  Future<List<Character>> deleteCharacter(String characterName) async => localDatasource.deleteCharacter(characterName);

  @override
  Future<List<Character>> getCharacterList() async => localDatasource.getCharacterList();
  
}
