import '../devices.dart';
import 'command.dart';

class LightOffCommand implements Command {
  final Light light;

  LightOffCommand(this.light);

  @override
  void execute() => light.off();

  @override
  void undo() => light.on();
}
