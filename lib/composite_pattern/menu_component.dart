abstract class MenuComponent {
  void add(MenuComponent menuComponent) =>
      throw UnsupportedError('Operation not supported');

  void remove(MenuComponent menuComponent) =>
      throw UnsupportedError('Operation not supported');

  MenuComponent getChild(int i) =>
      throw UnsupportedError('Operation not supported');

  String get name => throw UnsupportedError('Operation not supported');
  String get description => throw UnsupportedError('Operation not supported');
  double get price => throw UnsupportedError('Operation not supported');
  bool get vegetarian => throw UnsupportedError('Operation not supported');

  void printComponent() => throw UnsupportedError('Operation not supported');
}
