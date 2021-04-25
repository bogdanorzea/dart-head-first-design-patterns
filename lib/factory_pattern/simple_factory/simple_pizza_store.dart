import 'pizza.dart';
import 'simple_pizza_factory.dart';

class SimplePizzaStore {
  SimplePizzaFactory simplePizzaFactory;

  SimplePizzaStore(this.simplePizzaFactory);

  Pizza orderPizza(String pizzaType) {
    final pizza = simplePizzaFactory.createPizza(pizzaType);

    pizza
      ..prepare()
      ..bake()
      ..cut()
      ..box();

    return pizza;
  }
}
