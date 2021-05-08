import '../devices.dart';
import 'command.dart';

class LightOnCommand implements Command {
  final Light light;

  LightOnCommand(this.light);

  @override
  void execute() => light.on();

  @override
  void undo() => light.off();
}
