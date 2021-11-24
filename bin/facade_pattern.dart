import 'package:dart_head_first_design_patterns/facade_pattern/amplifier.dart';
import 'package:dart_head_first_design_patterns/facade_pattern/home_theater_facade.dart';
import 'package:dart_head_first_design_patterns/facade_pattern/popcorn_popper.dart';
import 'package:dart_head_first_design_patterns/facade_pattern/projector.dart';
import 'package:dart_head_first_design_patterns/facade_pattern/screen.dart';
import 'package:dart_head_first_design_patterns/facade_pattern/steaming_player.dart';
import 'package:dart_head_first_design_patterns/facade_pattern/theater_lights.dart';
import 'package:dart_head_first_design_patterns/facade_pattern/tuner.dart';

void main() {
  final amplifier = Amplifier('Amplifier');
  final tuner = Tuner('AM/FM Tuner', amplifier);
  final streamingPlayer = StreamingPlayer('Streaming player', amplifier);
  final theaterLights = TheaterLights('Theater ceiling lights');
  final screen = Screen('Theater screen');
  final projector = Projector('Projector', streamingPlayer);
  final popper = PopcornPopper('Popcorn popper');

  final homeTheater = HomeTheaterFacade(
    amplifier,
    tuner,
    streamingPlayer,
    theaterLights,
    screen,
    projector,
    popper,
  );

  homeTheater
    ..watchMovie('Avatar')
    ..endMovie();
}
