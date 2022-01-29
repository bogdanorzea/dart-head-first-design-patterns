import 'menu.dart';
import 'menu_item.dart';

class PancakeHouseMenu extends Menu {
  final List<MenuItem> menuItems = [];

  PancakeHouseMenu() {
    addItem(
      'K&B Pancake Breakfast',
      'Pancakes with scrambled eggs and toast',
      true,
      2.99,
    );

    addItem(
      'Regular Pancake Breakfast',
      'Pancakes with fried eggs, sausage',
      false,
      2.99,
    );

    addItem(
      'Blueberries Pancakes',
      'Pancakes made with fresh blueberries',
      true,
      3.49,
    );

    addItem(
      'Waffles',
      'Waffles with your choice of blueberries or strawberries',
      true,
      3.59,
    );
  }

  void addItem(String name, String description, bool vegetarian, double price) {
    menuItems.add(MenuItem(name, description, vegetarian, price));
  }

  @override
  PancakeMenuIterator createIterator() {
    return PancakeMenuIterator(menuItems);
  }
}

class PancakeMenuIterator implements Iterator<MenuItem> {
  final List<MenuItem> menuItems;
  int position = -1;

  PancakeMenuIterator(this.menuItems);

  @override
  MenuItem get current => menuItems[position];

  @override
  bool moveNext() {
    position += 1;

    if (position >= menuItems.length) {
      return false;
    } else {
      return true;
    }
  }
}
