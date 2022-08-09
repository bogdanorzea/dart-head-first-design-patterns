import 'dart:math';

import 'package:dart_head_first_design_patterns/state_pattern/gumball_machine.dart';
import 'package:dart_head_first_design_patterns/state_pattern/states/state.dart';

class HasQuarterState extends State {
  final GumballMachine gumballMachine;

  final _random = Random();

  HasQuarterState(this.gumballMachine);

  @override
  void dispense() {
    print('No gumball dispensed');
  }

  @override
  void ejectQuarter() {
    print('Quarter returned');
    gumballMachine.setState(gumballMachine.noQuarterState);
  }

  @override
  void insertQuarter() {
    print('You can\'t insert another quarter');
  }

  @override
  void turnCrank() {
    print('You turned...');
    final winner = _random.nextInt(10);
    if (winner == 0 && gumballMachine.count > 0) {
      gumballMachine.setState(gumballMachine.winnerState);
    } else {
      gumballMachine.setState(gumballMachine.soldState);
    }
  }

  @override
  void refill() {}

  @override
  String get description => 'Machine is ready to dispense gumball';
}
