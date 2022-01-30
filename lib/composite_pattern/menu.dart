import 'menu_component.dart';

class Menu extends MenuComponent {
  @override
  final String name;

  @override
  final String description;

  final menuComponents = <MenuComponent>[];

  Menu(this.name, this.description);

  @override
  void add(MenuComponent menuComponent) {
    menuComponents.add(menuComponent);
  }

  @override
  void remove(MenuComponent menuComponent) {
    menuComponents.remove(menuComponent);
  }

  @override
  MenuComponent getChild(int i) {
    return menuComponents.elementAt(i);
  }

  @override
  void printComponent() {
    print('\n$name, $description');
    print('----------');

    for (var component in menuComponents) {
      component.printComponent();
    }
  }
}
