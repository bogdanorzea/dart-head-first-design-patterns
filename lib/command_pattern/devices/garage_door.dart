class GarageDoor {
  final String name;

  GarageDoor(this.name);

  void up() => print('Garage door is going up');
  void down() => print('Garage door is going down');
  void stop() => print('Garage door stopped');
  void lightOn() => print('Garage door lights on');
  void lightOff() => print('Garage door lights off');
}
