abstract class Beverage {
  Size size = Size.tall;

  double get cost;
  String get description;
}

enum Size { tall, grande, venti }
