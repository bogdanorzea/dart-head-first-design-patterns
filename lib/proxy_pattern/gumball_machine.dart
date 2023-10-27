import 'package:dart_head_first_design_patterns/proxy_pattern/gumball_machine_remote.dart';
import 'package:dart_head_first_design_patterns/proxy_pattern/states/has_quarter_state.dart';
import 'package:dart_head_first_design_patterns/proxy_pattern/states/no_quarter_state.dart';
import 'package:dart_head_first_design_patterns/proxy_pattern/states/sold_out_state.dart';
import 'package:dart_head_first_design_patterns/proxy_pattern/states/sold_state.dart';
import 'package:dart_head_first_design_patterns/proxy_pattern/states/state.dart';
import 'package:dart_head_first_design_patterns/proxy_pattern/states/winner_state.dart';

class GumballMachine implements GumballMachineRemote {
  late State soldOutState;
  late State noQuarterState;
  late State hasQuarterState;
  late State soldState;
  late State winnerState;

  late State _state;
  @override
  String get stateDescription => _state.toJson();

  late int _count;
  @override
  int get count => _count;

  late String _location;
  @override
  String get location => _location;

  GumballMachine(int numberOfGumballs, String location) {
    soldOutState = SoldOutState(this);
    noQuarterState = NoQuarterState(this);
    hasQuarterState = HasQuarterState(this);
    soldState = SoldState(this);
    winnerState = WinnerState(this);

    _count = numberOfGumballs;
    _state = numberOfGumballs > 0 ? noQuarterState : soldOutState;

    _location = location;
  }

  void setState(State state) => _state = state;
  void releaseBall() {
    print('A gumball comes rolling out the slot...');
    if (count > 0) {
      _count = _count - 1;
    }
  }

  void insertQuarter() => _state.insertQuarter();
  void turnCrank() {
    _state.turnCrank();
    _state.dispense();
  }

  void refill(int count) {
    _count += count;
    print('The gumball machine was just refilled; its new count is: $_count');
    _state.refill();
  }

  @override
  String toString() {
    return '''\n
Mighty Gumball, Inc.
Dart-enabled Standing Gumball Model #2022 Inventory: $_count gumballs
${_state.description}
''';
  }
}
