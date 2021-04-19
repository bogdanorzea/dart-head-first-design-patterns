import 'package:dart_head_first_design_patterns/strategy_pattern/fly_behavior/fly_behaviors.dart';
import 'package:dart_head_first_design_patterns/strategy_pattern/quack_behavior/quack_behavior.dart';

abstract class Duck {
  Duck(FlyBehavior flyBehavior, QuackBehavior quackBehavior)
      : _flyBehavior = flyBehavior,
        _quackBehavior = quackBehavior;

  FlyBehavior _flyBehavior;
  set flyBehavior(FlyBehavior flyBehavior) => _flyBehavior = flyBehavior;
  void performFly() {
    _flyBehavior.fly();
  }

  QuackBehavior _quackBehavior;
  set quackBehavior(QuackBehavior quackBehavior) => _quackBehavior = quackBehavior;
  void performQuack() {
    _quackBehavior.quack();
  }

  void display();
}
