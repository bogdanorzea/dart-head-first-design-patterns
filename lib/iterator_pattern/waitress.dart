import 'cafe_menu.dart';
import 'diner_menu.dart';
import 'pancake_house_menu.dart';

class Waitress {
  final PancakeHouseMenu pancakeHouseMenu;
  final DinerMenu dinerMenu;
  final CafeMenu cafeMenu;

  Waitress(this.pancakeHouseMenu, this.dinerMenu, this.cafeMenu);

  void printMenu() {
    final pancakeIterator = pancakeHouseMenu.createIterator();
    final dinerIterator = dinerMenu.createIterator();
    final cafeMenuIterator = cafeMenu.createIterator();

    print('MENU\n----\nBREAKFAST');
    _printMenu(pancakeIterator);
    print('\nLUNCH');
    _printMenu(dinerIterator);
    print('\nDINNER');
    _printMenu(cafeMenuIterator);
  }

  void _printMenu(Iterator iterator) {
    while (iterator.moveNext()) {
      final menuItem = iterator.current;

      print(
        '${menuItem.name}, '
        '${menuItem.price} -- '
        '${menuItem.description}',
      );
    }
  }
}
