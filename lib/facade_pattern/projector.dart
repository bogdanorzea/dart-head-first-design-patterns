import 'package:dart_head_first_design_patterns/facade_pattern/steaming_player.dart';

class Projector {
  final String description;
  final StreamingPlayer player;

  Projector(this.description, this.player);

  void on() => print('$description on');

  void off() => print('$description off');

  void setWidescreenMode() => print('$description in widescreen mode');

  void setTvMode() => print('$description in tv mode');

  @override
  String toString() => description;
}
