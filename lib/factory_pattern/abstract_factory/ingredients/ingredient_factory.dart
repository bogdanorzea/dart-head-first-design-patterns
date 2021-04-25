
import 'ingredients.dart';

abstract class IngredientFactory {
  Ingredient get cheese;
  Ingredient get clams;
  Ingredient get dough;
  Ingredient get pepperoni;
  Ingredient get sauce;
  Iterable<Ingredient> get veggies;
}
