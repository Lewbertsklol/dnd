import 'package:dnd/features/character_list_view/domain/entities/character.dart';
import 'package:dnd/features/character_list_view/domain/entities/competence.dart';

import '../../../character_list_view/domain/entities/exp.dart';
import '../../../character_list_view/domain/entities/hp.dart';
import '../../../character_list_view/domain/entities/stats.dart';
import '../../../character_list_view/domain/entities/weapon.dart';

abstract class CharacterRepository {
  Character getCharacter(String characterName);
  Character updateCharacter(NewParams newParams);
}

class NewParams {
  final String characterName;
  final String? newName;
  final int? cd;
  final Exp? exp;
  final HP? hp;
  final List<Stat>? stats;
  final List<Weapon>? weapons;
  final List<Competence>? competences;

  NewParams({
    required this.characterName,
    this.newName,
    this.cd,
    this.exp,
    this.hp,
    this.stats,
    this.weapons,
    this.competences,
  });
}
