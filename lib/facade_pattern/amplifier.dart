import 'package:dart_head_first_design_patterns/facade_pattern/steaming_player.dart';
import 'package:dart_head_first_design_patterns/facade_pattern/tuner.dart';

class Amplifier {
  final String description;

  StreamingPlayer player;
  Tuner tuner;
  int volume;

  Amplifier(this.description);

  void on() => print('$description on');

  void off() => print('$description off');

  void setStereoSound() => print('$description stereo mode on');

  void setSurroundSound() => print('$description surround sound on');

  void setVolume(int volume) {
    this.volume = volume;
    print('$description setting volume to $volume');
  }

  void setTuner(Tuner tuner) {
    this.tuner = tuner;
    print('$description setting tuner to $tuner');
  }

  void setStreamingPlayer(StreamingPlayer player) {
    this.player = player;
    print('$description setting streaming player to $player');
  }

  @override
  String toString() => description;
}
