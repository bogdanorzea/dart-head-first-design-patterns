import '../devices.dart';
import 'ceiling_fan_base_command.dart';

class CeilingFanHighCommand extends CeilingFanBaseCommand {
  CeilingFanHighCommand(CeilingFan ceilingFan) : super(ceilingFan);

  @override
  void execute() {
    previousSpeed = ceilingFan.speed;
    return ceilingFan.high();
  }
}
