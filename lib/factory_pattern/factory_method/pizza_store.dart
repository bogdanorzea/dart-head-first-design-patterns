import 'package:meta/meta.dart';

import 'pizza.dart';

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
