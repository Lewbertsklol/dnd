import 'package:dnd/core/db/isar_db.dart';
import 'package:dnd/features/character_list_view/domain/repositories/character_list_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import 'features/character_gamelist/data/repositories/character_repository_impl.dart';
import 'features/character_gamelist/domain/repositories/character_repository.dart';
import 'features/character_gamelist/domain/usecase/get_character.dart';
import 'features/character_gamelist/domain/usecase/update_character.dart';
import 'features/character_gamelist/presentation/bloc/character_bloc.dart';
import 'features/character_list_view/data/datasources/character_list_local_datasource.dart';
import 'features/character_list_view/data/datasources/character_list_local_datasource_impl.dart';
import 'features/character_list_view/data/repositories/character_list_repository_impl.dart';
import 'features/character_list_view/domain/usecases/create_character.dart';
import 'features/character_list_view/domain/usecases/delete_character.dart';
import 'features/character_list_view/domain/usecases/get_character_list.dart';
import 'features/character_list_view/presentation/bloc/character_list_bloc.dart';

final sl = GetIt.instance;

void init() async {
  //Bloc
  sl.registerFactory(() => CharacterListBloc(
        getCharacterList: sl(),
        createCharacter: sl(),
        deleteCharacter: sl(),
      ));
  sl.registerFactory(() => CharacterBloc(
        getCharacter: sl(),
        updateCharacter: sl(),
      ));
  //Use cases
  sl.registerLazySingleton(() => GetCharacterList(sl()));
  sl.registerLazySingleton(() => CreateCharacter(sl()));
  sl.registerLazySingleton(() => DeleteCharacter(sl()));

  sl.registerLazySingleton(() => GetCharacter(sl()));
  sl.registerLazySingleton(() => UpdateCharacter(sl()));

  //Repository
  sl.registerLazySingleton<CharacterListRepository>(() => CharacterListRepositoryImpl(localDatasource: sl()));
  sl.registerLazySingleton<CharacterRepository>(() => CharacterRepositoryImpl(localDatasource: sl()));

  //Datasource
  sl.registerLazySingleton<CharacterListLocalDatasource>(() => CharacterListLocalDatasourceImpl());

  //Open database
  await Isar.open([
    CharacterEntitiesSchema,
    ExpEntitiesSchema,
    HpEntitiesSchema,
    StatEntitiesSchema,
    WeaponEntitiesSchema,
    CompetenceEntitiesSchema,
    ItemEntitiesSchema,
    GameClassEntitiesSchema,
    SkillEntitiesSchema,
    SpellEntitiesSchema
  ]);
}
