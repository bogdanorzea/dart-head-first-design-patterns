import 'duck.dart';
import 'turkey.dart';

class TurkeyAdapter implements Duck {
  final Turkey turkey;

  TurkeyAdapter(this.turkey);

  @override
  void fly() {
    for (var i = 0; i < 5; i++) {
      turkey.fly();
    }
  }

  @override
  void quack() {
    turkey.gobble();
  }
}
