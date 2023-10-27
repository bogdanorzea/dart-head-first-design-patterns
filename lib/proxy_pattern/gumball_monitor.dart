import 'package:dart_head_first_design_patterns/proxy_pattern/gumball_machine_remote.dart';

class GumballMonitor {
  final GumballMachineRemote gumballMachineRemote;

  GumballMonitor(this.gumballMachineRemote);

  Future<void> report() async {
    print('Gumball Machine: ${await gumballMachineRemote.location}');
    print('Current Inventory: ${await gumballMachineRemote.count}');
    print('Current State: ${await gumballMachineRemote.stateDescription}');
  }
}
