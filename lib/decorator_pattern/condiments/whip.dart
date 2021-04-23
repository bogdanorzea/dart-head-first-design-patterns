import '../beverage.dart';
import '../condiment_decorator.dart';

class Whip extends CondimentDecorator {
  Whip(Beverage beverage) {
    this.beverage = beverage;
  }

  @override
  double get cost => (0.10 + size.index * 0.05) + beverage.cost;

  @override
  String get description => '${beverage.description}, Whip';
}
