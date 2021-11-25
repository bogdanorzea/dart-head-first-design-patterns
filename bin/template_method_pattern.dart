import 'package:dart_head_first_design_patterns/template_method_pattern/coffee.dart';
import 'package:dart_head_first_design_patterns/template_method_pattern/tea.dart';

void main(List<String> arguments) {
  final tea = Tea();
  tea.prepareRecipe();

  final coffee = Coffee();
  coffee.prepareRecipe();
}
