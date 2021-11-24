import 'package:dart_head_first_design_patterns/adapter_pattern/duck.dart';
import 'package:dart_head_first_design_patterns/adapter_pattern/mallard_duck.dart';
import 'package:dart_head_first_design_patterns/adapter_pattern/turkey.dart';
import 'package:dart_head_first_design_patterns/adapter_pattern/turkey_adapter.dart';
import 'package:dart_head_first_design_patterns/adapter_pattern/wild_turkey.dart';

void main() {
  final Duck mallardDuck = MallardDuck();
  final Turkey turkey = WildTurkey();
  final Duck turkeyAdapter = TurkeyAdapter(turkey);

  print('Turkey says...');
  turkey
    ..gobble()
    ..fly();

  print('Duck says...');
  testDuck(mallardDuck);

  print('TurkeyAdapter says...');
  testDuck(turkeyAdapter);
}

void testDuck(Duck duck) {
  duck.quack();
  duck.fly();
}
