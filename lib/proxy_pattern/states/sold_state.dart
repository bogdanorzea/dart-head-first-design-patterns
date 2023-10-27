import 'package:dart_head_first_design_patterns/proxy_pattern/gumball_machine.dart';
import 'package:dart_head_first_design_patterns/proxy_pattern/states/state.dart';

class SoldState extends State {
  final GumballMachine gumballMachine;

  SoldState(this.gumballMachine);

  @override
  void dispense() {
    gumballMachine.releaseBall();
    if (gumballMachine.count > 0) {
      gumballMachine.setState(gumballMachine.noQuarterState);
    } else {
      print('Oops, out of gumballs!');
      gumballMachine.setState(gumballMachine.soldOutState);
    }
  }

  @override
  void ejectQuarter() {
    print('Sorry, you already turned the crank');
  }

  @override
  void insertQuarter() {
    print('Please wait, we\'re already giving you a gumball');
  }

  @override
  void turnCrank() {
    print('Turning twice doesn\'t get you another gumball!');
  }

  @override
  void refill() {}

  @override
  String get description => 'Machine is dispensing the gumball';

  @override
  String toJson() => '$SoldState ($description)';
}
