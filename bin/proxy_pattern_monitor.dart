import 'package:dart_head_first_design_patterns/proxy_pattern/gumball_machine_remote_proxy.dart';
import 'package:dart_head_first_design_patterns/proxy_pattern/gumball_monitor.dart';

Future<void> main() async {
  final locations = [
    'ws://localhost:4040/ws',
    'ws://localhost:4041/ws',
  ];
  final monitors = <GumballMonitor>[];

  for (final location in locations) {
    final remote = GumballMachineRemoteProxy(location);

    monitors.add(GumballMonitor(remote));
  }

  for (final monitor in monitors) {
    await monitor.report();
  }
}
