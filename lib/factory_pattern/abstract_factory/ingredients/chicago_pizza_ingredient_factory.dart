import 'black_olives.dart';
import 'eggplant.dart';
import 'frozen_clams.dart';
import 'ingredient.dart';
import 'ingredient_factory.dart';
import 'mozarella_cheese.dart';
import 'plum_tomato_sauce.dart';
import 'sliced_pepperoni.dart';
import 'spinach.dart';
import 'thick_crust_dough.dart';


class ChicagoPizzaIngredientFactory extends IngredientFactory {
  @override
  Ingredient get cheese => MozarellaCheese();

  @override
  Ingredient get clams => FrozenClams();

  @override
  Ingredient get dough => ThickCrustDough();

  @override
  Ingredient get pepperoni => SlicedPepperoni();

  @override
  Ingredient get sauce => PlumTomatoSauce();

  @override
  Iterable<Ingredient> get veggies => [Spinach(), Eggplant(), BlackOlives()];
}
