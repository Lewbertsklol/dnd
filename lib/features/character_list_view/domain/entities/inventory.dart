import 'package:equatable/equatable.dart';

enum ItemType {
  weapon,
  armor,
  tools,
  food,
  questItems,
  other,
}

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
  List<Object?> get props => [];
}

class Inventory extends Equatable {
  
  List<Item> items;
  List<Item> weapon;
  List<Item> armor;
  List<Item> tools;
  List<Item> food;
  List<Item> questItems;
  List<Item> other;

  Inventory({
    required this.items,
  })  : weapon = items.where((element) => element.itemType == ItemType.weapon).toList(),
        armor = items.where((element) => element.itemType == ItemType.armor).toList(),
        tools = items.where((element) => element.itemType == ItemType.tools).toList(),
        food = items.where((element) => element.itemType == ItemType.food).toList(),
        questItems = items.where((element) => element.itemType == ItemType.questItems).toList(),
        other = items.where((element) => element.itemType == ItemType.other).toList();

  void addItem(Item item) {
    items.add(item);
    weapon = items.where((element) => element.itemType == ItemType.weapon).toList();
    armor = items.where((element) => element.itemType == ItemType.armor).toList();
    tools = items.where((element) => element.itemType == ItemType.tools).toList();
    food = items.where((element) => element.itemType == ItemType.food).toList();
    questItems = items.where((element) => element.itemType == ItemType.questItems).toList();
    other = items.where((element) => element.itemType == ItemType.other).toList();
  }

  void removeItem(ItemType category, int index) {
    switch (category) {
      case ItemType.weapon:
        weapon.removeAt(index);
        break;
      case ItemType.armor:
        armor.removeAt(index);
        break;
      case ItemType.tools:
        tools.removeAt(index);
        break;
      case ItemType.food:
        food.removeAt(index);
        break;
      case ItemType.questItems:
        questItems.removeAt(index);
        break;
      case ItemType.other:
        other.removeAt(index);
        break;
    }
    items = armor + weapon + tools + food + questItems + other;
  }

  void editItem(ItemType category, int index, Item editedItem) {
    switch (category) {
      case ItemType.weapon:
        weapon[index] = editedItem;
        break;
      case ItemType.armor:
        armor[index] = editedItem;
        break;
      case ItemType.tools:
        tools[index] = editedItem;
        break;
      case ItemType.food:
        food[index] = editedItem;
        break;
      case ItemType.questItems:
        questItems[index] = editedItem;
        break;
      case ItemType.other:
        other[index] = editedItem;
        break;
    }
    items = armor + weapon + tools + food + questItems + other;
  }

  @override
  bool? get stringify => true;
  
  @override
  List<Object?> get props => [];

}
