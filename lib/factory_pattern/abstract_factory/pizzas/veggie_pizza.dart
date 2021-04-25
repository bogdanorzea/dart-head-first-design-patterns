import '../ingredients/ingredients.dart';
import 'pizza.dart';

class VeggiePizza extends Pizza {
  VeggiePizza(this.ingredientFactory);

  IngredientFactory ingredientFactory;

  @override
  void prepare() {
    print('Preparing $name');
    dough = ingredientFactory.dough;
    sauce = ingredientFactory.sauce;
    cheese = ingredientFactory.cheese;
    clams = ingredientFactory.clams;
  }
}
