import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../character_list_view/domain/entities/competence.dart';
import '../../domain/repositories/character_repository.dart';
import '../bloc/character_bloc.dart';

void changeCompetenceMastered(BuildContext context, CharacterLoaded state, Competence competence) {
  final Competence newCompetence = Competence(
    competenceType: competence.competenceType,
    statTypeScale: competence.statTypeScale,
    mastered: !competence.mastered,
    competenced: competence.competenced,
  );
  //print(newCompetence);
  final List<Competence> competences =
      (state.character.competences.map((oldCompetence) => oldCompetence.competenceType == newCompetence.competenceType ? newCompetence : oldCompetence)).toList();
  context.read<CharacterBloc>().add(
        UpdateCharacterEvent(
          params: NewParams(
            characterName: state.character.name,
            competences: competences,
          ),
        ),
      );
}
