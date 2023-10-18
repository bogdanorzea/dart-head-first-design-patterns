import 'menu.dart';
import 'menu_item.dart';

class DinerMenu implements Menu {
  static final int MAX_ITEMS = 6;
  int numberOfItems = 0;
  final List<MenuItem?> menuItems = List.filled(MAX_ITEMS, null);

  DinerMenu() {
    addItem(
      'Vegetarian BLT',
      'Fake bacon with lettuce & tomato on whole wheat',
      true,
      2.99,
    );

    addItem(
      'BLT',
      'Bacon with lettuce & tomato on whole wheat',
      false,
      2.99,
    );

    addItem(
      'Soup of the day',
      'Soup of the day, with a side of potato salad',
      false,
      3.29,
    );

    addItem(
      'Hotdog',
      'A hot dog, with sauerkraut, relish, onions, topped with cheese',
      false,
      3.29,
    );
  }

  void addItem(String name, String description, bool vegetarian, double price) {
    final menuItem = MenuItem(name, description, vegetarian, price);
    if (numberOfItems >= MAX_ITEMS) {
      print('Sorry, menu is full! Can\'t add item to menu');
    } else {
      menuItems[numberOfItems] = menuItem;
      numberOfItems += 1;
    }
  }

  @override
  DinerMenuIterator createIterator() => DinerMenuIterator(menuItems);
}

class DinerMenuIterator implements Iterator<MenuItem> {
  final List<MenuItem?> menuItems;
  int position = -1;

  DinerMenuIterator(this.menuItems);

  @override
  MenuItem get current => menuItems[position]!;

  @override
  bool moveNext() {
    position += 1;
    if (position >= menuItems.length || menuItems[position] == null) {
      return false;
    } else {
      return true;
    }
  }
}
