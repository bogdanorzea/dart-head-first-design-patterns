import 'package:dart_head_first_design_patterns/proxy_pattern/gumball_machine.dart';
import 'package:dart_head_first_design_patterns/proxy_pattern/states/state.dart';

class SoldOutState extends State {
  final GumballMachine gumballMachine;

  SoldOutState(this.gumballMachine);

  @override
  void dispense() {
    print('Oops, out of gumballs!');
  }

  @override
  void ejectQuarter() {
    print('You ca\'t eject, you haven\'t inserted a quarter yet');
  }

  @override
  void insertQuarter() {
    print('You can\'t insert a quarter, the machine is sold out');
  }

  @override
  void turnCrank() {
    print('You turned, but there are no gumballs');
  }

  @override
  void refill() {
    print('Adding more gumballs to the machine');
    gumballMachine.setState(gumballMachine.noQuarterState);
  }

  @override
  String get description => 'Machine is sold out';

  @override
  String toJson() => '$SoldOutState ($description)';
}
