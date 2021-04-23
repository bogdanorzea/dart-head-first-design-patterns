import '../beverage.dart';
import '../condiment_decorator.dart';

class Soy extends CondimentDecorator {
  Soy(Beverage beverage) {
    this.beverage = beverage;
  }

  @override
  double get cost => (0.15 + size.index * 0.05) + beverage.cost;

  @override
  String get description => '${beverage.description}, Soy';
}
