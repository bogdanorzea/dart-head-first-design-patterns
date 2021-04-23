import '../beverage.dart';

class DarkRoast extends Beverage {
  DarkRoast([Size size = Size.tall]) {
    this.size = size;
  }

  @override
  double get cost => 0.99 + size.index * 0.45;


  @override
  String get description => 'Most Excellent Dark Roast';
}
