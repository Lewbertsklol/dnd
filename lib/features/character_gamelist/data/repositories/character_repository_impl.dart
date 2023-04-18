import 'package:dnd/features/character_list_view/domain/entities/character.dart';

import '../../../character_list_view/data/datasources/character_list_local_datasource.dart';
import '../../domain/repositories/character_repository.dart';

class CharacterRepositoryImpl implements CharacterRepository{
  final CharacterListLocalDatasource localDatasource;
  CharacterRepositoryImpl({required this.localDatasource});
  @override
  Character getCharacter(String characterName) => localDatasource.getCharacter(characterName);

  @override
  Character updateCharacter(NewParams params) => localDatasource.updateCharacter(params);

}