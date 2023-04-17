import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings_ru.dart';
import '../widgets/create_character_button.dart';
import '../widgets/character_list_view.dart';

class CharacterListPage extends StatelessWidget {
  const CharacterListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(RuStrings.CHARACTER_LIST),
      ),
      body: const CharacterListView(),
      floatingActionButton: const CreateCharacterButton(),
    );
  }
}
