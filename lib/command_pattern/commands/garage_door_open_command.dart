import '../devices.dart';
import 'command.dart';

class GarageDoorOpenCommand implements Command {
  GarageDoor garageDoor;

  GarageDoorOpenCommand(this.garageDoor);

  @override
  void execute() => garageDoor.up();

  @override
  void undo() => garageDoor.down();
}
