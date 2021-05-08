import 'commands.dart';

class SimpleRemoteControl {
  Command slot;

  void buttonWasPressed() {
    slot.execute();
  }

  void undoButtonPressed() {
    slot.undo();
  }
}
