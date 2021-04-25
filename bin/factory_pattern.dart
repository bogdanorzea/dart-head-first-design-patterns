import 'package:dart_head_first_design_patterns/factory_pattern/abstract_factory/chicago_style_pizza_store.dart';
import 'package:dart_head_first_design_patterns/factory_pattern/factory_method/ny_style_pizza_store.dart';
import 'package:dart_head_first_design_patterns/factory_pattern/simple_factory/simple_pizza_factory.dart';
import 'package:dart_head_first_design_patterns/factory_pattern/simple_factory/simple_pizza_store.dart';

void main() {
  final pizzaFactory = SimplePizzaFactory();
  final pizzaStore = SimplePizzaStore(pizzaFactory);
  final pizza = pizzaStore.orderPizza('cheese');
  print('We ordered a ${pizza.name} from a simple pizza store\n');

  final nyPizzaStore = NYStylePizzaStore();
  final nyPizza = nyPizzaStore.orderPizza('clam');
  print('We ordered a ${nyPizza.name} from a NY style pizza store\n');

  final chicagoPizzaStore = ChicagoStylePizzaStore();
  final chicagoPizza = chicagoPizzaStore.orderPizza('clam');
  print('We ordered a ${chicagoPizza.name} from a Chicago style pizza store\n');
}
