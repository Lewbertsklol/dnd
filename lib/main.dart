import 'package:dnd/features/character_gamelist/presentation/pages/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dnd/injection_container.dart' as di;

import 'features/character_gamelist/presentation/bloc/character_bloc.dart';
import 'features/character_list_view/presentation/bloc/character_list_bloc.dart';
import 'features/character_list_view/presentation/pages/character_list_page.dart';
import 'features/character_list_view/presentation/pages/create_character_page.dart';
import 'injection_container.dart';

void main() {
  di.init();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CharacterListBloc>(
          create: (context) => sl<CharacterListBloc>(),
        ),
        BlocProvider<CharacterBloc>(
          create: (context) => sl<CharacterBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          inputDecorationTheme: const InputDecorationTheme(
            labelStyle: TextStyle(color: Colors.green),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.green),
            ),
          ),
        ),
        initialRoute: '/character_list_page',
        routes: {
          '/character_list_page': (context) => const CharacterListPage(),
          '/character_list_page/create_character_page': (context) => const CreateCharacterPage(),
          '/character_list_page/character_game_list': (context) => const MainScreen(),
        },
      ),
    );
  }
}
