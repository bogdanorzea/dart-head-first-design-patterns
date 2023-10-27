abstract class State implements Serializable {
  void insertQuarter();
  void ejectQuarter();
  void turnCrank();
  void dispense();
  void refill();

  String get description;
}

abstract class Serializable {
  String toJson();
}
