import 'commands.dart';

class RemoteControl {
  static const _positions = 7;

  final onCommands = List<Command>.generate(_positions, (_) => NoCommand(), growable: false);
  final offCommands = List<Command>.generate(_positions, (_) => NoCommand(), growable: false);
  Command undoCommand = NoCommand();

  void setCommand(int position, Command onCommand, Command offCommand) {
    if (position >= _positions) return;

    onCommands[position] = onCommand;
    offCommands[position] = offCommand;
  }

  void onButtonWasPressed(int position) {
    if (position >= _positions) return;

    onCommands[position].execute();
    undoCommand = onCommands[position];
  }

  void offButtonWasPressed(int position) {
    if (position >= _positions) return;

    offCommands[position].execute();
    undoCommand = offCommands[position];
  }

  void undoButtonPressed() {
    undoCommand.undo();
  }

  @override
  String toString() {
    final stringBuffer = StringBuffer();
    stringBuffer.writeln('---- Remote Control ----');
    for (var i = 0; i < _positions; i++) {
      stringBuffer.writeln('[position $i]: ${onCommands[i].runtimeType}\t\t${offCommands[i].runtimeType}');
    }

    return stringBuffer.toString();
  }
}
