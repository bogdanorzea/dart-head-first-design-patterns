
import 'package:dart_head_first_design_patterns/strategy_pattern/fly_behavior/fly_behaviors.dart';
import 'package:dart_head_first_design_patterns/strategy_pattern/quack_behavior/quack_behaviors.dart';

import 'duck.dart';

class DecoyDuck extends Duck {
  DecoyDuck() : super(FlyNoWay(), MuteQuack());

  @override
  void display() {
    print("I'm a decoy duck");
  }
}
