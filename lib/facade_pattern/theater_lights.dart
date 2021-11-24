class TheaterLights {
  final String description;

  const TheaterLights(this.description);

  void on() => print('$description on');

  void off() => print('$description off');

  void dim(int level) => print('$description dimming to $level%');

  @override
  String toString() => description;
}
