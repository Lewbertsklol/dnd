import 'package:dnd/features/character_list_view/domain/entities/character.dart';
import 'package:dnd/features/character_list_view/domain/entities/competence.dart';

import '../../domain/entities/exp.dart';
import '../../domain/entities/game_class.dart';
import '../../domain/entities/hp.dart';
import '../../domain/entities/item.dart';
import '../../domain/entities/stats.dart';
import '../../domain/entities/weapon.dart';

class CharacterModel extends Character {
  const CharacterModel(
      {required super.name,
      required super.race,
      required super.sex,
      required super.backstory,
      super.customNameOfMulticlass,
      required super.cd,
      required super.exp,
      required super.hp,
      required super.stats,
      required super.weapons,
      required super.competences,
      required super.items,
      required super.gameClasses});

  CharacterModel copyWith(
      {String? name,
      String? race,
      String? sex,
      String? backstory,
      String? customNameOfMulticlass,
      int? cd,
      Exp? exp,
      HP? hp,
      List<Stat>? stats,
      List<Weapon>? weapons,
      List<Competence>? competences,
      List<Item>? items,
      List<GameClass>? gameClasses}) {
    return CharacterModel(
      name: name ?? this.name,
      race: race ?? this.race,
      sex: sex ?? this.sex,
      backstory: backstory ?? this.backstory,
      customNameOfMulticlass: customNameOfMulticlass ?? this.customNameOfMulticlass,
      cd: cd ?? this.cd,
      exp: exp ?? this.exp,
      hp: hp ?? this.hp,
      stats: stats ?? this.stats,
      weapons: weapons ?? this.weapons,
      competences: competences ?? this.competences,
      items: items ?? this.items,
      gameClasses: gameClasses ?? this.gameClasses,
    );
  }
}
