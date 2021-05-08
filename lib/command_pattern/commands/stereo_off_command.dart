import '../devices.dart';
import 'command.dart';

class StereoOffCommand implements Command {
  final Stereo stereo;

  StereoOffCommand(this.stereo);

  @override
  void execute() => stereo.off();

  @override
  void undo() => stereo.on();
}
