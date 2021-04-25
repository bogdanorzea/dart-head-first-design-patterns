abstract class Pizza {
  String get name;
  String get dough;
  String get sauce;
  Iterable<String> get toppings;

  void prepare() {
    print('Preparing: $name');
    print('Tossing dough...');
    print('Adding sauce...');
    print('Adding toppings: ');
    for (final topping in toppings) {
      print('\t$topping');
    }
  }

  void bake() {
    print('Baking: $name');
  }

  void cut() {
    print('Cutting: $name');
  }

  void box() {
    print('Boxing: $name');
  }

  @override
  String toString() {
    final display = StringBuffer();
    display.write('---- $name ----\n');
    display.write('$dough\n');
    display.write('$sauce\n');
    for (final topping in toppings) {
      display.write('$topping\n');
    }

    return display.toString();
  }
}
