import 'package:meta/meta.dart';

import 'ingredients/ingredients.dart';
import 'pizza_store.dart';
import 'pizzas/pizzas.dart';

class ChicagoStylePizzaStore extends PizzaStore {
  @override
  @protected
  Pizza createPizza(String pizzaType) {
    final ingredientFactory = ChicagoPizzaIngredientFactory();

    switch (pizzaType) {
      case 'cheese':
        return CheesePizza(ingredientFactory)..name = 'Chicago style Cheese Pizza';
      case 'clam':
        return ClamPizza(ingredientFactory)..name = 'Chicago style Clam Pizza';
      case 'pepperoni':
        return PepperoniPizza(ingredientFactory)..name = 'Chicago style Pepperoni Pizza';
      case 'veggie':
        return VeggiePizza(ingredientFactory)..name = 'Chicago style Veggie Pizza';
      default:
        throw UnimplementedError();
    }
  }
}
