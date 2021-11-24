import 'duck.dart';

class MallardDuck implements Duck {
  @override
  void fly() {
    print('I am flying');
  }

  @override
  void quack() {
    print('Quack!');
  }
}
