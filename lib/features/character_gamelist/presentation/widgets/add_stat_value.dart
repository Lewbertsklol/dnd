import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../character_list_view/domain/entities/stats.dart';
import '../../domain/repositories/character_repository.dart';
import '../bloc/character_bloc.dart';

void addStatValue(BuildContext context, CharacterLoaded state, Stat stat) {
  final newStat = Stat(
    statType: stat.statType,
    value: stat.value + 1,
    saveThrowMastered: stat.saveThrowMastered,
  );
  final stats = (state.character.stats.map((oldStat) => oldStat.statType == newStat.statType ? newStat : oldStat)).toList();
  print(newStat);
  context.read<CharacterBloc>().add(
        UpdateCharacterEvent(
          params: NewParams(
            characterName: state.character.name,
            stats: stats,
          ),
        ),
      );
}

void removeStatValue(BuildContext context, CharacterLoaded state, Stat stat) {
  final newStat = Stat(
    statType: stat.statType,
    value: stat.value - 1,
    saveThrowMastered: stat.saveThrowMastered,
  );
  final stats = (state.character.stats.map((oldStat) => oldStat.statType == newStat.statType ? newStat : oldStat)).toList();
  print(newStat);
  context.read<CharacterBloc>().add(
        UpdateCharacterEvent(
          params: NewParams(
            characterName: state.character.name,
            stats: stats,
          ),
        ),
      );
}
