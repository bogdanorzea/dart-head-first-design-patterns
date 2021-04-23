import 'package:dart_head_first_design_patterns/decorator_pattern/beverage.dart';
import 'package:dart_head_first_design_patterns/decorator_pattern/condiments/condiments.dart';
import 'package:dart_head_first_design_patterns/decorator_pattern/drinks/drinks.dart';

void main() {
  Beverage beverage1 = Espresso();
  print('${beverage1.description}: ${beverage1.cost}');

  Beverage beverage2 = DarkRoast();
  beverage2 = Mocha(beverage2);
  beverage2 = Mocha(beverage2);
  beverage2 = Whip(beverage2);
  print('${beverage2.description}: ${beverage2.cost}');

  Beverage beverage3 = Whip(Mocha(Soy(HouseBlend())));
  print('${beverage3.description}: ${beverage3.cost}');

  Beverage beverage4 = Whip(Mocha(Soy(HouseBlend(Size.venti))));
  print('${beverage4.description}: ${beverage4.cost}');
}
