class Stereo {
  final String name;

  Stereo(this.name);

  void on() => print('Stereo is on');
  void off() => print('Stereo is off');
  void setCd() => print('Stereo source is CD');
  void setDvd() => print('Stereo source is DVD');
  void setRadio() => print('Stereo source is Radio');
  void setVolume(int volume) => print('Stereo volume is $volume');
}
