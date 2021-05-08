import '../devices.dart';
import 'command.dart';

class StereoOnWithCdCommand implements Command {
  final Stereo stereo;

  StereoOnWithCdCommand(this.stereo);

  @override
  void execute() {
    stereo
      ..on()
      ..setCd()
      ..setVolume(11);
  }

  @override
  void undo() => stereo.off();
}
