import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../../core/usecases/usecases.dart';
import '../bloc/character_list_bloc.dart';
import 'character_row.dart';

class CharacterListView extends StatelessWidget {
  const CharacterListView({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<CharacterListBloc>().add(GetCharacterListEvent(NoParams()));
    return BlocBuilder<CharacterListBloc, CharacterListState>(
      builder: (context, state) {
        if (state is CharacterListInitial) {
          return const Center(child: CircularProgressIndicator());
        } else {
          state as CharacterListLoaded;
          return ListView.builder(
            itemCount: state.characterList.length,
            itemBuilder: (BuildContext context, int index) {
              return CharacterRow(character: state.characterList[index]);
            },
          );
        }
      },
    );
  }
}
