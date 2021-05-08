import '../devices.dart';
import 'ceiling_fan_base_command.dart';

class CeilingFanLowCommand extends CeilingFanBaseCommand {
  CeilingFanLowCommand(CeilingFan ceilingFan) : super(ceilingFan);

  @override
  void execute() {
    previousSpeed = ceilingFan.speed;
    return ceilingFan.low();
  }
}
