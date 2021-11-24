import 'package:dart_head_first_design_patterns/facade_pattern/amplifier.dart';

class StreamingPlayer {
  final String description;
  final Amplifier amplifier;

  String movie;
  int currentChapter;

  StreamingPlayer(this.description, this.amplifier);

  void on() => print('$description on');

  void off() => print('$description off');

  void playMovie(String movie) {
    this.movie = movie;
    currentChapter = 0;
    print('$description playing $movie');
  }

  void playChapter(int chapter) {
    if (movie == null) {
      print("$description can't play chapter $chapter, no movie selected");
    }

    currentChapter = chapter;
    print('$description playing chapter $chapter of $movie');
  }

  void stop() {
    currentChapter = 0;
    print('$description stopped $movie');
  }

  void pause() {
    print('$description paused $movie');
  }

  void setTwoChannelAudio() => print('$description set two channel audio');

  void setSurroundAudio() => print('$description set surround audio');

  @override
  String toString() => description;
}
