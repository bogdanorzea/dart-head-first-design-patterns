import 'menu_component.dart';

class Waitress {
  final MenuComponent menu;

  Waitress(this.menu);

  void printMenu() => menu.printComponent();
}
