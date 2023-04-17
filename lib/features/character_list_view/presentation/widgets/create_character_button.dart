import 'package:flutter/material.dart';

class CreateCharacterButton extends StatelessWidget {
  const CreateCharacterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => {
        Navigator.of(context).pushNamed('/character_list_page/create_character_page'),
      },
    );
  }
}
