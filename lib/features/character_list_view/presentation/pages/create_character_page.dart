import 'package:flutter/material.dart';



import '../../../../core/constants/app_strings_ru.dart';
import '../widgets/text_field_name.dart';

class CreateCharacterPage extends StatelessWidget {
  const CreateCharacterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(RuStrings.CREATE_CHARACTER),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextFieldCharacterName(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
      ),
    );
  }
}
