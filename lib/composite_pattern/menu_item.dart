import 'menu_component.dart';

class MenuItem extends MenuComponent {
  @override
  final String name;

  @override
  final String description;

  @override
  final bool vegetarian;

  @override
  final double price;

  MenuItem(this.name, this.description, this.vegetarian, this.price);

  @override
  void printComponent() {
    print('  $name${vegetarian ? ' (v)' : ''}, $price -- $description');
  }
}
