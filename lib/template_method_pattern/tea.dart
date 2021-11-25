import 'dart:io';

import 'package:dart_head_first_design_patterns/template_method_pattern/caffeine_beverage.dart';

class Tea extends CaffeineBeverage {
  @override
  void addCondiments() => print('Adding lemon');

  @override
  void brew() => print('Steeping the tea');

  @override
  bool customerWantsCondiments() {
    print('Would you like milk and sugar with your coffee (y/n)?');
    final answer = stdin.readLineSync() ?? 'no';

    return answer.toLowerCase().startsWith('y');
  }
}
