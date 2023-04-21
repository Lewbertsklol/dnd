import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/game_class.dart';
import '../../domain/repositories/character_list_repository.dart';
import '../bloc/character_list_bloc.dart';

class TextFieldCharacterName extends StatelessWidget {
  const TextFieldCharacterName({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {
        context.read<CharacterListBloc>().add(
              CreateCharacterEvent(
                ParamsForNewCharacter(
                  name: value,
                  race: 'race',
                  sex: 'sex',
                  backstory: 'backstory',
                  gameClassType: GameClassType.WARLOCK,
                ),
              ),
            );

        Navigator.of(context).pop();
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
      },
      decoration: const InputDecoration(border: OutlineInputBorder()),
    );
  }
}
