import '../ingredients/ingredients.dart';
import 'pizza.dart';

class PepperoniPizza extends Pizza {
  PepperoniPizza(this.ingredientFactory);

  IngredientFactory ingredientFactory;

  @override
  void prepare() {
    print('Preparing $name');
    dough = ingredientFactory.dough;
    sauce = ingredientFactory.sauce;
    cheese = ingredientFactory.cheese;
    pepperoni = ingredientFactory.pepperoni;
  }
}
