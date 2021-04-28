import 'package:dart_head_first_design_patterns/singleton_pattern/singleton.dart';

void main() {
  final singleton = Singleton.instance;
  print(singleton.description);

  final factorySingleton = FactorySingleton();
  print(factorySingleton.description);
}
