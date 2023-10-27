import 'package:dart_head_first_design_patterns/proxy_pattern/gumball_machine.dart';
import 'package:dart_head_first_design_patterns/proxy_pattern/gumball_machine_remote.dart';

import 'dart:io';

Future<void> main(List<String> arguments) async {
  final gumballMachine = GumballMachine(5, 'Austin');
  final port = int.parse(arguments[0]);
  final server = await HttpServer.bind(InternetAddress.loopbackIPv4, port);

  await for (final request in server) {
    if (request.uri.path == '/ws') {
      final socket = await WebSocketTransformer.upgrade(request);

      socket.listen((_message) {
        final message = _message;

        if (message is String) {
          print(message);

          switch (message) {
            case GumballMachineRemote.countMethodName:
              socket.add(gumballMachine.count.toString());
            case GumballMachineRemote.locationMethodName:
              socket.add(gumballMachine.location);
            case GumballMachineRemote.stateMethodName:
              socket.add(gumballMachine.stateDescription);
          }
        }
      });
    } else {
      request.response.statusCode = HttpStatus.forbidden;
      await request.response.close();
    }
  }
}
