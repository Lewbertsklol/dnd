import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/character.dart';
import '../bloc/character_list_bloc.dart';

class CharacterRow extends StatelessWidget {
  final Character character;
  const CharacterRow({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterListBloc, CharacterListState>(
      builder: (context, state) {
        return GestureDetector(
          onLongPress: () => context.read<CharacterListBloc>().add(DeleteCharacterEvent(characterName: character.name)),
          onTap: () => Navigator.of(context).pushNamed('/character_list_page/character_game_list', arguments: character.name),
          child: Card(
            child: Text(character.name),
          ),
        );
      },
    );
  }
}
