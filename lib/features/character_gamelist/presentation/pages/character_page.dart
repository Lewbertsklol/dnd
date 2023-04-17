import 'package:dnd/features/character_gamelist/domain/repositories/character_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/character_bloc.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final characterName = ModalRoute.of(context)?.settings.arguments as String;
    context.read<CharacterBloc>().add(GetCharacterEvent(characterName));

    return BlocBuilder<CharacterBloc, CharacterState>(
      builder: (context, state) {
        if (state is CharacterInitial) {
          return const Center(child: CircularProgressIndicator());
        }
        state as CharacterLoaded;
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(state.character.name),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pushNamed(
                '/character_list_page',
              ),
            ),
          ),
          body: Center(
            child: TextField(
              onSubmitted: (value) {
                SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
                context.read<CharacterBloc>().add(UpdateCharacterEvent(params: NewParams(characterName: characterName, newName: value)));
              },
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
          ),
        );
      },
    );
  }
}
