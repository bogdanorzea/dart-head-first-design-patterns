import '../devices.dart';
import 'ceiling_fan_base_command.dart';

class CeilingFanOffCommand extends CeilingFanBaseCommand {
  CeilingFanOffCommand(CeilingFan ceilingFan) : super(ceilingFan);

  @override
  void execute() {
    previousSpeed = ceilingFan.speed;
    ceilingFan.off();
  }
}
