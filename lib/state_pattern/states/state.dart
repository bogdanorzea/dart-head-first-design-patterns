abstract class State {
  void insertQuarter();
  void ejectQuarter();
  void turnCrank();
  void dispense();
  void refill();

  String get description;
}
