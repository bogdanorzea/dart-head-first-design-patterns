import 'package:dart_head_first_design_patterns/strategy_pattern/duck/ducks.dart';
import 'package:dart_head_first_design_patterns/strategy_pattern/fly_behavior/fly_behaviors.dart';

void main(List<String> arguments) {
  MallardDuck()
    ..display()
    ..performFly()
    ..performQuack();

  RubberDuck()
    ..display()
    ..performFly()
    ..performQuack();

  DecoyDuck()
    ..display()
    ..performFly()
    ..performQuack();

  ModelDuck()
    ..display()
    ..performFly()
    ..flyBehavior = FlyWithRockets()
    ..performFly();
}
