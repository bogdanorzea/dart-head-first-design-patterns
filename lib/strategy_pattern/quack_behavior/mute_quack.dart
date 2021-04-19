import 'quack_behavior.dart';

class MuteQuack implements QuackBehavior {
  @override
  void quack() {
    print('<< Silence >>');
  }
}
