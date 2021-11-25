import 'dart:io';

import 'package:dart_head_first_design_patterns/template_method_pattern/caffeine_beverage.dart';

class Coffee extends CaffeineBeverage {
  @override
  void addCondiments() => print('Adding sugar and milk');

  @override
  void brew() => print('Dripping coffee through filter');

  @override
  bool customerWantsCondiments() {
    print('Would you like milk and sugar with your coffee (y/n)?');
    final answer = stdin.readLineSync() ?? 'no';

    return answer.toLowerCase().startsWith('y');
  }
}
