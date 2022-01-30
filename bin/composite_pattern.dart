import 'package:dart_head_first_design_patterns/composite_pattern/menu_item.dart';
import 'package:dart_head_first_design_patterns/composite_pattern/waitress.dart';
import 'package:dart_head_first_design_patterns/composite_pattern/menu.dart';

void main() {
  final cafeMenu = Menu('CAFE MENU', 'Dinner')
    ..add(MenuItem(
      'Veggie Burger and Air Fries',
      'Veggie burger on a whole wheat bun, lettuce, tomato, and fries',
      true,
      3.99,
    ))
    ..add(MenuItem(
      'Soup of the day',
      'A cup of the soup of the day, with a side salad',
      false,
      3.69,
    ))
    ..add(MenuItem(
      'Burrito',
      'A large burrito, with whole pinto beans, salsa, guacamole',
      true,
      4.29,
    ));

  final pancakeHouseMenu = Menu('PANCAKE HOUSE MENU', 'Breakfast')
    ..add(MenuItem(
      'K&B Pancake Breakfast',
      'Pancakes with scrambled eggs and toast',
      true,
      2.99,
    ))
    ..add(MenuItem(
      'Regular Pancake Breakfast',
      'Pancakes with fried eggs, sausage',
      false,
      2.99,
    ))
    ..add(MenuItem(
      'Blueberries Pancakes',
      'Pancakes made with fresh blueberries',
      true,
      3.49,
    ))
    ..add(MenuItem(
      'Waffles',
      'Waffles with your choice of blueberries or strawberries',
      true,
      3.59,
    ));

  final dinerMenu = Menu('DINER MENU', 'Lunch')
    ..add(MenuItem(
      'Vegetarian BLT',
      'Fake bacon with lettuce & tomato on whole wheat',
      true,
      2.99,
    ))
    ..add(MenuItem(
      'BLT',
      'Bacon with lettuce & tomato on whole wheat',
      false,
      2.99,
    ))
    ..add(MenuItem(
      'Soup of the day',
      'Soup of the day, with a side of potato salad',
      false,
      3.29,
    ))
    ..add(MenuItem(
      'Hotdog',
      'A hot dog, with sauerkraut, relish, onions, topped with cheese',
      false,
      3.29,
    ));

  final dessertMenu = Menu('DESSERT MENU', 'Dessert of course!')
    ..add(MenuItem(
      'Apple Pie',
      'Apple pie with a flakey crust, topped with vanilla ice-cream',
      true,
      1.59,
    ))
    ..add(MenuItem(
      'Cheesecake',
      'Creamy New York cheesecake, with a chocolate graham crust',
      true,
      1.99,
    ))
    ..add(MenuItem(
      'Sorbet',
      'A scoop of raspberry and a scoop of lime',
      true,
      1.89,
    ));

  dinerMenu.add(dessertMenu);

  final allMenus = Menu('ALL MENUS', 'All menus combined')
    ..add(cafeMenu)
    ..add(dinerMenu)
    ..add(pancakeHouseMenu);

  final waitress = Waitress(allMenus);

  waitress.printMenu();
}
