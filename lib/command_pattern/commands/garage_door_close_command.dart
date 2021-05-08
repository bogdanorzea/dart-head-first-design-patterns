import '../devices.dart';
import 'command.dart';

class GarageDoorCloseCommand implements Command {
  GarageDoor garageDoor;

  GarageDoorCloseCommand(this.garageDoor);

  @override
  void execute() => garageDoor.down();

  @override
  void undo() => garageDoor.up();
}
