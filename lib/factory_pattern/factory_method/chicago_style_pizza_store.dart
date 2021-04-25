import 'package:meta/meta.dart';

import 'pizza.dart';
import 'pizza_store.dart';

class ChicagoStylePizzaStore extends PizzaStore {
  @override
  @protected
  Pizza createPizza(String pizzaType) {
    switch (pizzaType) {
      case 'cheese':
        return _ChicagoStyleCheesePizza();
      case 'clam':
        return _ChicagoStyleClamPizza();
      case 'pepperoni':
        return _ChicagoStylePepperoniPizza();
      case 'veggie':
        return _ChicagoStyleVeggiePizza();
      default:
        throw UnimplementedError();
    }
  }
}

class _ChicagoStyleCheesePizza extends Pizza {
  @override
  String get name => 'Chicago Style Deep Dish Cheese Pizza';

  @override
  String get dough => 'Extra thick crust';

  @override
  String get sauce => 'Plum tomato sauce';

  @override
  Iterable<String> get toppings => ['Shredded mozarella'];
}

class _ChicagoStyleClamPizza extends Pizza {
  @override
  String get name => 'Chicago Style Clam Pizza';

  @override
  String get dough => 'Extra thick crust';

  @override
  String get sauce => 'Plum tomato sauce';

  @override
  Iterable<String> get toppings => ['Frozen Clams', 'Shredded mozarella'];
}

class _ChicagoStylePepperoniPizza extends Pizza {
  @override
  String get name => 'Chicago Style Pepperoni Pizza';

  @override
  String get dough => 'Extra thick crust';

  @override
  String get sauce => 'Plum tomato sauce';

  @override
  Iterable<String> get toppings => ['Sliced pepperoni', 'Eggplant', 'Shredded mozarella', 'Mushrooms'];
}

class _ChicagoStyleVeggiePizza extends Pizza {
  @override
  String get name => 'Chicago Style Veggie Pizza';

  @override
  String get dough => 'Thin crust';

  @override
  String get sauce => 'Marinara pizza sauce';

  @override
  Iterable<String> get toppings => ['Shreded mozarella', 'Eggplant', 'Sliced mushrooms', 'Spinach'];
}
