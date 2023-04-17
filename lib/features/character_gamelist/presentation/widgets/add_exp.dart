import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../character_list_view/domain/entities/exp.dart';
import '../../domain/repositories/character_repository.dart';
import '../bloc/character_bloc.dart';

void addExp(BuildContext context, CharacterLoaded state, int expValue) {
  final newExp = state.character.exp.value + expValue < 0 ? const Exp() : Exp(value: state.character.exp.value + (expValue));
  print(newExp);
  context.read<CharacterBloc>().add(
        UpdateCharacterEvent(
          params: NewParams(
            characterName: state.character.name,
            exp: newExp,
          ),
        ),
      );
}
