import 'turkey.dart';

class WildTurkey implements Turkey {
  @override
  void fly() {
    print('I fly a short distance');
  }

  @override
  void gobble() {
    print('Gobble gobble');
  }
}
