abstract class CaffeineBeverage {
  void prepareRecipe() {
    _boilWater();
    brew();
    _pourInCup();
    if (customerWantsCondiments()) addCondiments();
  }

  void _boilWater() => print('Boiling water');

  void brew();

  void _pourInCup() => print('Pouring into cup');

  bool customerWantsCondiments() => true;

  void addCondiments();
}
