import '../beverage.dart';

class Decaf extends Beverage {
  Decaf([Size size = Size.tall]) {
    this.size = size;
  }

  @override
  double get cost => 1.05 + size.index * 0.55;

  @override
  String get description => 'Decaf Coffee';
}
