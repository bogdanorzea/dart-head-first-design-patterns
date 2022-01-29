import 'package:dart_head_first_design_patterns/iterator_pattern/cafe_menu.dart';
import 'package:dart_head_first_design_patterns/iterator_pattern/diner_menu.dart';
import 'package:dart_head_first_design_patterns/iterator_pattern/pancake_house_menu.dart';
import 'package:dart_head_first_design_patterns/iterator_pattern/waitress.dart';

void main() {
  final pancakeHouseMenu = PancakeHouseMenu();
  final dinerMenu = DinerMenu();
  final cafeMenu = CafeMenu();
  final waitress = Waitress(pancakeHouseMenu, dinerMenu, cafeMenu);

  waitress.printMenu();
}
