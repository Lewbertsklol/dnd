import 'package:dnd/features/character_list_view/domain/entities/character.dart';

import '../../../character_list_view/data/datasources/character_list_local_datasource.dart';
import '../../domain/repositories/character_repository.dart';

class CharacterRepositoryImpl implements CharacterRepository{
  final CharacterListLocalDatasource localDatasource;
  CharacterRepositoryImpl({required this.localDatasource});
  @override
  Future<Character> getCharacter(String characterName) async => await localDatasource.getCharacter(characterName);

  @override
  Future<Character> updateCharacter(NewParams params) async => await localDatasource.updateCharacter(params);

}