import 'package:dart_head_first_design_patterns/facade_pattern/amplifier.dart';

class Tuner {
  final String description;
  final Amplifier amplifier;

  late double frequency;

  Tuner(this.description, this.amplifier);

  void on() => print('$description on');

  void off() => print('$description off');

  void setAm() => print('$description setting AM');

  void setFm() => print('$description setting FM');

  void setFrequency(double frequency) {
    this.frequency = frequency;
    print('$description setting frequency to $frequency');
  }

  @override
  String toString() => description;
}
