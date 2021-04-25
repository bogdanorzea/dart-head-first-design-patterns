import 'package:meta/meta.dart';

import 'pizzas/pizzas.dart';

abstract class PizzaStore {
  @protected
  Pizza createPizza(String pizzaType);

  Pizza orderPizza(String pizzaType) {
    final pizza = createPizza(pizzaType);

    pizza
      ..prepare()
      ..bake()
      ..cut()
      ..box();

    return pizza;
  }
}
