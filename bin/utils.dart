enum PrintColor {
  black,
  red,
  green,
  yellow,
  blue,
  magenta,
  cyan,
  white,
  reset,
}

const _colorCodes = {
  PrintColor.black: '\x1B[30m',
  PrintColor.red: '\x1B[31m',
  PrintColor.green: '\x1B[32m',
  PrintColor.yellow: '\x1B[33m',
  PrintColor.blue: '\x1B[34m',
  PrintColor.magenta: '\x1B[35m',
  PrintColor.cyan: '\x1B[36m',
  PrintColor.white: '\x1B[37m',
  PrintColor.reset: '\x1B[0m',
};

class Log {
  Log._privateConstructor();

  static final _instance = Log._privateConstructor();
  static Log get instance => _instance;

  void call(String text) {
    print(text);
  }

  void red(String text) {
    _colorPrint(text, PrintColor.red);
  }

  static void _colorPrint(String text, PrintColor withColor) {
    print('${_colorCodes[withColor]}$text${_colorCodes[PrintColor.reset]}');
  }
}
