import 'package:dnd/features/character_list_view/domain/entities/character.dart';
import 'package:dnd/features/character_list_view/domain/entities/competence.dart';
import 'package:dnd/features/character_list_view/domain/entities/game_class.dart';
import 'package:dnd/features/character_list_view/domain/entities/item.dart';

import '../../../character_list_view/domain/entities/exp.dart';
import '../../../character_list_view/domain/entities/hp.dart';
import '../../../character_list_view/domain/entities/stats.dart';
import '../../../character_list_view/domain/entities/weapon.dart';

abstract class CharacterRepository {
  Future<Character> getCharacter(String characterName);
  Future<Character> updateCharacter(NewParams newParams);
}

class NewParams {
  final String characterName;
  final String? newName;
  final String? customNameOfMulticlass;
  final int? cd;
  final Exp? exp;
  final HP? hp;
  final List<Stat>? stats;
  final List<Weapon>? weapons;
  final List<Competence>? competences;
  final List<Item>? items;
  final List<GameClass>? gameClasses;

  NewParams({
    required this.characterName,
    this.newName,
    this.customNameOfMulticlass,
    this.cd,
    this.exp,
    this.hp,
    this.stats,
    this.weapons,
    this.competences,
    this.items,
    this.gameClasses,
  });
}
