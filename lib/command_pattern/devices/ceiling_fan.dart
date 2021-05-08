class CeilingFan {
  static const int OFF = 0;
  static const int LOW = 1;
  static const int MEDIUM = 2;
  static const int HIGH = 3;

  final String name;
  int speed;

  CeilingFan(this.name) : speed = OFF;

  void low() {
    speed = LOW;
    print('Ceiling fan is speed is: $speed');
  }

  void medium() {
    speed = MEDIUM;
    print('Ceiling fan is speed is: $speed');
  }

  void high() {
    speed = HIGH;
    print('Ceiling fan is speed is: $speed');
  }

  void off() {
    speed = OFF;
    print('Ceiling fan is off');
  }
}
