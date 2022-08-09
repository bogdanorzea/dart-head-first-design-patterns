import 'package:dart_head_first_design_patterns/state_pattern/gumball_machine.dart';

void main() {
  final gumballMachine = GumballMachine(5);

  gumballMachine
    ..insertQuarter()
    ..turnCrank();

  print(gumballMachine);

  gumballMachine
    ..insertQuarter()
    ..turnCrank()
    ..insertQuarter()
    ..turnCrank();

  print(gumballMachine);
}
