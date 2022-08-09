import 'package:dart_head_first_design_patterns/state_pattern/gumball_machine.dart';
import 'package:dart_head_first_design_patterns/state_pattern/states/state.dart';

class NoQuarterState extends State {
  final GumballMachine gumballMachine;

  NoQuarterState(this.gumballMachine);

  @override
  void dispense() {
    print('You need to pay first');
  }

  @override
  void ejectQuarter() {
    print('You haven\'t inserted a quarter');
  }

  @override
  void insertQuarter() {
    print('You inserted a quarter');
    gumballMachine.setState(gumballMachine.hasQuarterState);
  }

  @override
  void turnCrank() {
    print('You turned but there is no quarter');
  }

  @override
  void refill() {}

  @override
  String get description => 'Machine is waiting for quarter';
}
