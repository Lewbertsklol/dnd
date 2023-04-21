// ignore_for_file: constant_identifier_names

import 'package:dnd/features/character_list_view/domain/entities/game_class.dart';

import '../../features/character_list_view/domain/entities/competence.dart';

class RuStrings {
  static const String CHARACTER_LIST = 'Лист персонажей';
  static const String CREATE_CHARACTER = 'Создать персонажа';
  static const String STR = 'СИЛ';
  static const String DEX = 'ЛОВ';
  static const String VIT = 'ТЕЛ';
  static const String INT = 'ИНТ';
  static const String WIS = 'МДР';
  static const String CHR = 'ХАР';


  static String nameOfGameClass(GameClassType gameClassType) {
    switch (gameClassType) {
      case GameClassType.ARTIFICIER:
        return 'Изобретатель';
      case GameClassType.BARBARIAN:
        return 'Варвар';
      case GameClassType.BARD:
        return 'Бард';
      case GameClassType.CLERIC:
        return 'Жрец';
      case GameClassType.DRUID:
        return 'Дриуд';
      case GameClassType.FIGHTER:
        return 'Воин';
      case GameClassType.MONK:
        return 'Монах';
      case GameClassType.PALADIN:
        return 'Паладин';
      case GameClassType.RANGER:
        return 'Следопыт';
      case GameClassType.ROGUE:
        return 'Плут';
      case GameClassType.SORCERER:
        return 'Чародей';
      case GameClassType.WARLOCK:
        return 'Колдун';
      case GameClassType.WIZARD:
        return 'Волшебник';
    }
  }

  static String nameOfDiceType(DiceType diceType) {
    switch (diceType) {
      case DiceType.D4:
        return 'Д4';
      case DiceType.D6:
        return 'Д6';
      case DiceType.D8:
        return 'Д8';
      case DiceType.D10:
        return 'Д10';
      case DiceType.D12:
        return 'Д12';
      case DiceType.D20:
        return 'Д20';
      case DiceType.D100:
        return 'Д100';
    }
  }

  static String nameOfCompetenceByType(CompetenceType competenceType) {
    switch (competenceType) {
      case CompetenceType.ACROBATICS:
        return 'Акробатика';
      case CompetenceType.ANALISYS:
        return 'Анилиз';
      case CompetenceType.ATHLETICS:
        return 'Атлетика';
      case CompetenceType.ATTENTION:
        return 'Внимательность';
      case CompetenceType.SURVIVAL:
        return 'Выживание';
      case CompetenceType.PERFOMANCE:
        return 'Выступление';
      case CompetenceType.HARASSMENT:
        return 'Запугивание';
      case CompetenceType.HISTORY:
        return 'История';
      case CompetenceType.FAST_HANDS:
        return 'Ловкость рук';
      case CompetenceType.MAGIC:
        return 'Магия';
      case CompetenceType.MEDICINE:
        return 'Медицина';
      case CompetenceType.LIE:
        return 'Обман';
      case CompetenceType.NATURE:
        return 'Природа';
      case CompetenceType.INSIGHT:
        return 'Проницательность';
      case CompetenceType.RELIGION:
        return 'Религия';
      case CompetenceType.STEALTH:
        return 'Незаметность';
      case CompetenceType.PERSUASION:
        return 'Убеждение';
      case CompetenceType.ANIMAL_CARE:
        return 'Забота о животных';
    }
  }
}
