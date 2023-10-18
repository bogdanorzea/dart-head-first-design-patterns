import '../ingredients/ingredient.dart';

abstract class Pizza {
  late String name;

  late Ingredient cheese;
  late Ingredient clams;
  late Ingredient dough;
  late Ingredient sauce;
  late Ingredient pepperoni;
  late Iterable<Ingredient> veggies;

  void bake() {
    print('Bake for 25 minutes at 350');
  }

  void box() {
    print('Place pizza in official PizzaStore box');
  }

  void cut() {
    print('Cutting the pizza into diagonal slices');
  }

  void prepare();
}
