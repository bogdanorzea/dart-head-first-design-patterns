import '../ingredients/ingredients.dart';
import 'pizza.dart';

class CheesePizza extends Pizza {
  CheesePizza(this.ingredientFactory);

  IngredientFactory ingredientFactory;

  @override
  void prepare() {
    print('Preparing $name');
    dough = ingredientFactory.dough;
    sauce = ingredientFactory.sauce;
    cheese = ingredientFactory.cheese;
  }
}
