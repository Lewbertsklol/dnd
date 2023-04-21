import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../character_list_view/domain/entities/competence.dart';
import '../../domain/repositories/character_repository.dart';
import '../bloc/character_bloc.dart';

void changeCompetenced(BuildContext context, CharacterLoaded state, Competence competence) {
  final Competence newCompetence = Competence(
    competenceType: competence.competenceType,
    mastered: competence.mastered,
    competenced: !competence.competenced,
  );
  final List<Competence> competences =
      (state.character.competences.map((oldCompetence) => oldCompetence.competenceType == newCompetence.competenceType ? newCompetence : oldCompetence)).toList();
  //print(newCompetence);
  context.read<CharacterBloc>().add(
        UpdateCharacterEvent(
          params: NewParams(
            characterName: state.character.name,
            competences: competences,
          ),
        ),
      );
}
