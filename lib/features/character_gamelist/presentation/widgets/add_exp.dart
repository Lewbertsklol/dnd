import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../character_list_view/domain/entities/exp.dart';
import '../../domain/repositories/character_repository.dart';
import '../bloc/character_bloc.dart';

void addExp(BuildContext context, CharacterLoaded state, int addedExp) {
  final int currentExpValue = state.character.exp.value;
  final Exp newExp = currentExpValue + addedExp < 0 ? const Exp() : Exp(value: currentExpValue + addedExp);
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
