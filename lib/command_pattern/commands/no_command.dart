import 'command.dart';

class NoCommand implements Command {
  @override
  void execute() {}

  @override
  void undo() {}
}
