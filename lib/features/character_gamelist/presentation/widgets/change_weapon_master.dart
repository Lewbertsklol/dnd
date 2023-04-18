import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../character_list_view/domain/entities/weapon.dart';
import '../../domain/repositories/character_repository.dart';
import '../bloc/character_bloc.dart';

void changeWeaponMaster(BuildContext context, CharacterLoaded state, Weapon weapon) {
  final newWeapon = Weapon(
    master: !weapon.master,
    name: weapon.name,
    typeDamage: weapon.typeDamage,
    distance: weapon.distance,
    dice: weapon.dice,
    weaponType: weapon.weaponType,
    bonusAttackChance: weapon.bonusAttackChance,
    bonusAttackDamage: weapon.bonusAttackDamage,
    description: weapon.description,
  );
  final weapons = state.character.weapons.map((oldWeapon) => oldWeapon.name == newWeapon.name ? newWeapon : oldWeapon).toList();
  print('Изменил $weapon');
  print('на $newWeapon');
  context.read<CharacterBloc>().add(
        UpdateCharacterEvent(
          params: NewParams(
            characterName: state.character.name,
            weapons: weapons,
          ),
        ),
      );
}
