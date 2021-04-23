import '../beverage.dart';
import '../condiment_decorator.dart';

class Milk extends CondimentDecorator {
  Milk(Beverage beverage, [Size size = Size.grande]) {
    this.beverage = beverage;
    this.size = size;
  }

  @override
  double get cost => (0.10 + size.index * 0.05) + beverage.cost;

  @override
  String get description => '${beverage.description}, Milk';
}
