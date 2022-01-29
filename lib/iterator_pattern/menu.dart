import 'menu_item.dart';

abstract class Menu {
  Iterator<MenuItem> createIterator();
}
