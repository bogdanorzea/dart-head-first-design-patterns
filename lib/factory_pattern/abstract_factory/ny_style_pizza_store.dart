import 'package:meta/meta.dart';

import 'ingredients/ingredients.dart';
import 'pizza_store.dart';
import 'pizzas/pizzas.dart';

class NYStylePizzaStore extends PizzaStore {
  @override
  @protected
  Pizza createPizza(String pizzaType) {
    final ingredientFactory = NYPizzaIngredientFactory();

    switch (pizzaType) {
      case 'cheese':
        return CheesePizza(ingredientFactory)..name = 'New York style Cheese Pizza';
      case 'clam':
        return ClamPizza(ingredientFactory)..name = 'New York style Clam Pizza';
      case 'pepperoni':
        return PepperoniPizza(ingredientFactory)..name = 'New York style Pepperoni Pizza';
      case 'veggie':
        return VeggiePizza(ingredientFactory)..name = 'New York style Veggie Pizza';
      default:
        throw UnimplementedError();
    }
  }
}
