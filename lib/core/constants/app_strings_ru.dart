// ignore_for_file: constant_identifier_names

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
