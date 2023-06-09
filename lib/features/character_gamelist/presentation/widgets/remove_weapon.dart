import 'package:dnd/features/character_gamelist/presentation/bloc/character_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../character_list_view/domain/entities/weapon.dart';
import '../../domain/repositories/character_repository.dart';

void removeWeapon(BuildContext context, CharacterLoaded state, Weapon weapon) {
  final List<Weapon> weapons = (state.character.weapons.where((oldWeapon) => oldWeapon != weapon)).toList();
  context.read<CharacterBloc>().add(
        UpdateCharacterEvent(
          params: NewParams(
            characterName: state.character.name,
            weapons: weapons,
          ),
        ),
      );
}
