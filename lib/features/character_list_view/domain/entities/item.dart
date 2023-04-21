// ignore_for_file: constant_identifier_names

import 'package:equatable/equatable.dart';

enum ItemType { WEAPON, ARMOR, TOOLS, FOOD, QUEST_ITEMS, OTHER }

class Item extends Equatable {
  final String name;
  final String description;
  final ItemType itemType;

  const Item({
    required this.name,
    required this.description,
    required this.itemType,
  });

  @override
  List<Object?> get props => [name, description, itemType];
}
