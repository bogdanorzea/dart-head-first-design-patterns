class Screen {
  final String description;

  const Screen(this.description);

  void up() => print('$description going up');

  void down() => print('$description going down');

  @override
  String toString() => description;
}
