import '../beverage.dart';

class HouseBlend extends Beverage {
  HouseBlend([Size size = Size.tall]) {
    this.size = size;
  }

  @override
  double get cost => 0.89 + size.index * 0.65;

  @override
  String get description => 'House Blend Coffee';
}
