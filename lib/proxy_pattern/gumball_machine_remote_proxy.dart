import 'dart:async';
import 'dart:io';

import 'package:dart_head_first_design_patterns/proxy_pattern/gumball_machine_remote.dart';

class GumballMachineRemoteProxy implements GumballMachineRemote {
  final String address;

  GumballMachineRemoteProxy(this.address);

  @override
  Future<int?> get count async {
    final completer = Completer<int?>();

    final socket = await WebSocket.connect(address);

    socket.add(GumballMachineRemote.countMethodName);
    socket.listen((_message) {
      final message = int.parse(_message);

      completer.complete(message);
    });

    return completer.future;
  }

  @override
  Future<String?> get location async {
    final completer = Completer<String?>();

    final socket = await WebSocket.connect(address);

    socket.add(GumballMachineRemote.locationMethodName);
    socket.listen((_message) {
      completer.complete(_message);
    });

    return completer.future;
  }

  @override
  Future<String?> get stateDescription async {
    final completer = Completer<String?>();

    final socket = await WebSocket.connect(address);

    socket.add(GumballMachineRemote.stateMethodName);
    socket.listen((_message) {
      completer.complete(_message);
    });

    return completer.future;
  }
}
