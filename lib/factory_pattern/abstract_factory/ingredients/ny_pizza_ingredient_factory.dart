import 'fresh_clams.dart';
import 'garlic.dart';
import 'ingredient.dart';
import 'ingredient_factory.dart';
import 'marinara_sauce.dart';
import 'mushroom.dart';
import 'onion.dart';
import 'red_pepper.dart';
import 'reggiano_cheese.dart';
import 'sliced_pepperoni.dart';
import 'thin_crust_dough.dart';

class NYPizzaIngredientFactory extends IngredientFactory {
  @override
  Ingredient get cheese => ReggianoCheese();

  @override
  Ingredient get clams => FreshClams();

  @override
  Ingredient get dough => ThinCrustDough();

  @override
  Ingredient get pepperoni => SlicedPepperoni();

  @override
  Ingredient get sauce => MarinaraSauce();

  @override
  Iterable<Ingredient> get veggies => [Garlic(), Onion(), Mushroom(), RedPepper()];
}
