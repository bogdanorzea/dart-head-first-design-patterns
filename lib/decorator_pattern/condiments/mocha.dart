import '../beverage.dart';
import '../condiment_decorator.dart';

class Mocha extends CondimentDecorator {
  Mocha(Beverage beverage) {
    this.beverage = beverage;
  }

  @override
  double get cost => (0.20 + size.index * 0.05) + beverage.cost;

  @override
  String get description => '${beverage.description}, Mocha';
}
