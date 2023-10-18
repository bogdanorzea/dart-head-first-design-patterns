import 'commands.dart';

class SimpleRemoteControl {
  late Command slot;

  void buttonWasPressed() {
    slot.execute();
  }

  void undoButtonPressed() {
    slot.undo();
  }
}
