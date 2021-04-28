class Singleton {
  Singleton._privateConstructor();

  static final _instance = Singleton._privateConstructor();

  static Singleton get instance => _instance;

  String get description => 'I am a static singleton!';
}

class FactorySingleton {
  FactorySingleton._privateConstructor();

  static final _instance = FactorySingleton._privateConstructor();

  factory FactorySingleton() {
    return _instance;
  }

  String get description => 'I am a factory singleton!';
}
