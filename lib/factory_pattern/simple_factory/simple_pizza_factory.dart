import 'pizza.dart';

class SimplePizzaFactory {
  Pizza createPizza(String pizzaType) {
    switch (pizzaType) {
      case 'cheese':
        return _CheesePizza();
      case 'clam':
        return _ClamPizza();
      case 'pepperoni':
        return _PepperoniPizza();
      case 'veggie':
        return _VeggiePizza();
      default:
        throw UnimplementedError();
    }
  }
}

class _CheesePizza extends Pizza {
  @override
  String get name => 'Cheese Pizza';

  @override
  String get dough => 'Regular crust';

  @override
  String get sauce => 'Marinara pizza sauce';

  @override
  Iterable<String> get toppings => ['Fresh mozarella', 'Parmesan'];
}

class _ClamPizza extends Pizza {
  @override
  String get name => 'Clam Pizza';

  @override
  String get dough => 'Thin crust';

  @override
  String get sauce => 'White garlic sauce';

  @override
  Iterable<String> get toppings => ['Clams', 'Grated parmesan'];
}

class _PepperoniPizza extends Pizza {
  @override
  String get name => 'Pepperoni Pizza';

  @override
  String get dough => 'Regular crust';

  @override
  String get sauce => 'Marinara pizza sauce';

  @override
  Iterable<String> get toppings => ['Sliced pepperoni', 'Sliced onions', 'Grated parmesan'];
}

class _VeggiePizza extends Pizza {
  @override
  String get name => 'Veggie Pizza';

  @override
  String get dough => 'Regular crust';

  @override
  String get sauce => 'Marinara pizza sauce';

  @override
  Iterable<String> get toppings =>
      ['Shreded mozarella', 'Diced onions', 'Sliced mushrooms', 'Sliced red pepper', 'Sliced black olives'];
}
