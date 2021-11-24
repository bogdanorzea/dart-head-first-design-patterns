import 'package:dart_head_first_design_patterns/facade_pattern/amplifier.dart';
import 'package:dart_head_first_design_patterns/facade_pattern/popcorn_popper.dart';
import 'package:dart_head_first_design_patterns/facade_pattern/projector.dart';
import 'package:dart_head_first_design_patterns/facade_pattern/screen.dart';
import 'package:dart_head_first_design_patterns/facade_pattern/steaming_player.dart';
import 'package:dart_head_first_design_patterns/facade_pattern/theater_lights.dart';
import 'package:dart_head_first_design_patterns/facade_pattern/tuner.dart';

class HomeTheaterFacade {
  final Amplifier amplifier;
  final Tuner tuner;
  final StreamingPlayer player;
  final TheaterLights lights;
  final Screen screen;
  final Projector projector;
  final PopcornPopper popper;

  const HomeTheaterFacade(
    this.amplifier,
    this.tuner,
    this.player,
    this.lights,
    this.screen,
    this.projector,
    this.popper,
  );

  void watchMovie(String movie) {
    print('Get ready to watch a movie...');
    popper
      ..on()
      ..pop();
    lights.dim(10);
    screen.down();
    projector
      ..on()
      ..setWidescreenMode();
    amplifier
      ..on()
      ..setStreamingPlayer(player)
      ..setStereoSound()
      ..setVolume(5);
    player
      ..on()
      ..playMovie(movie);
  }

  void endMovie() {
    print('Shutting movie theater down...');
    popper.off();
    lights.on();
    screen.up();
    projector.off();
    amplifier.off();
    player
      ..stop()
      ..off();
  }
}
