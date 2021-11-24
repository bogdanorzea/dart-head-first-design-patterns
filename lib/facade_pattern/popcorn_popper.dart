class PopcornPopper {
  final String description;

  const PopcornPopper(this.description);

  void on() => print('$description on');

  void off() => print('$description off');

  void pop() => print('$description popping popcorn!');

  @override
  String toString() => description;
}
