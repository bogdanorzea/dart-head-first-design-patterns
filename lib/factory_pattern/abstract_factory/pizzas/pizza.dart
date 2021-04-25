import '../ingredients/ingredient.dart';

abstract class Pizza {
  String name;

  Ingredient cheese;
  Ingredient clams;
  Ingredient dough;
  Ingredient sauce;
  Ingredient pepperoni;
  Iterable<Ingredient> veggies;

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
