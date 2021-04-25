import 'package:meta/meta.dart';

import 'pizza.dart';
import 'pizza_store.dart';

class NYStylePizzaStore extends PizzaStore {
  @override
  @protected
  Pizza createPizza(String pizzaType) {
    switch (pizzaType) {
      case 'cheese':
        return _NYStyleCheesePizza();
      case 'clam':
        return _NYStyleClamPizza();
      case 'pepperoni':
        return _NYStylePepperoniPizza();
      case 'veggie':
        return _NYStyleVeggiePizza();
      default:
        throw UnimplementedError();
    }
  }
}

class _NYStyleCheesePizza extends Pizza {
  @override
  String get name => 'NY Style Sause and Cheese Pizza';

  @override
  String get dough => 'Thin crust';

  @override
  String get sauce => 'Marinara pizza sauce';

  @override
  Iterable<String> get toppings => ['Grated Reggiano'];
}

class _NYStyleClamPizza extends Pizza {
  @override
  String get name => 'NY Style Clam Pizza';

  @override
  String get dough => 'Thin crust';

  @override
  String get sauce => 'White garlic sauce';

  @override
  Iterable<String> get toppings => ['Fresh Clams from Long Island', 'Grated Reggiano'];
}

class _NYStylePepperoniPizza extends Pizza {
  @override
  String get name => 'NY Style Pepperoni Pizza';

  @override
  String get dough => 'Thin crust';

  @override
  String get sauce => 'Marinara pizza sauce';

  @override
  Iterable<String> get toppings => ['Sliced pepperoni', 'Sliced onions', 'Garlic', 'Grated Reggiano', 'Mushrooms'];
}

class _NYStyleVeggiePizza extends Pizza {
  @override
  String get name => 'NY Style Veggie Pizza';

  @override
  String get dough => 'Thin crust';

  @override
  String get sauce => 'Marinara pizza sauce';

  @override
  Iterable<String> get toppings => ['Shreded mozarella', 'Diced onions', 'Sliced mushrooms', 'Sliced red pepper'];
}
