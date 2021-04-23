import '../beverage.dart';

class Espresso extends Beverage {
  Espresso([Size size = Size.tall]) {
    this.size = size;
  }

  @override
  double get cost => 1.99 + size.index * 0.99;

  @override
  String get description => 'Espresso';
}
