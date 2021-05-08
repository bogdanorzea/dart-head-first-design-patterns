import '../devices.dart';
import 'command.dart';

abstract class CeilingFanBaseCommand implements Command {
  final CeilingFan ceilingFan;
  int previousSpeed;

  CeilingFanBaseCommand(this.ceilingFan);

  @override
  void undo() {
    switch (previousSpeed) {
      case CeilingFan.OFF:
        ceilingFan.off();
        break;
      case CeilingFan.LOW:
        ceilingFan.low();
        break;
      case CeilingFan.MEDIUM:
        ceilingFan.medium();
        break;
      case CeilingFan.HIGH:
        ceilingFan.high();
        break;
      default:
        return;
    }
  }
}
