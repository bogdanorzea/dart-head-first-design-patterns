import '../ingredients/ingredients.dart';
import 'pizza.dart';

class ClamPizza extends Pizza {
  ClamPizza(this.ingredientFactory);

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
