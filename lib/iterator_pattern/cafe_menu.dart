import 'dart:collection';

import 'package:dart_head_first_design_patterns/iterator_pattern/menu.dart';

import 'menu_item.dart';

class CafeMenu implements Menu {
  final menuItems = HashMap<String, MenuItem>();

  CafeMenu() {
    addItem(
      'Veggie Burger and Air Fries',
      'Veggie burger on a whole wheat bun, lettuce, tomato, and fries',
      true,
      3.99,
    );
    addItem(
      'Soup of the day',
      'A cup of the soup of the day, with a side salad',
      false,
      3.69,
    );
    addItem(
      'Burrito',
      'A large burrito, with whole pinto beans, salsa, guacamole',
      true,
      4.29,
    );
  }

  void addItem(String name, String description, bool vegetarian, double price) {
    final menuItem = MenuItem(name, description, vegetarian, price);

    menuItems.addEntries([
      MapEntry(name, menuItem),
    ]);
  }

  @override
  Iterator<MenuItem> createIterator() => menuItems.values.iterator;
}
