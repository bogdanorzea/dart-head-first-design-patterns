# Head First Design Patterns adapted for Dart
I've adapted the Java examples from the [Head First Design Patterns](https://www.oreilly.com/library/view/head-first-design/9781492077992/) book to Dart.

## Setup
```bash
dart pub get
```

## Patterns

### Strategy pattern
Defines a family of algorithms, encapsulates each one, and makes them interchangeable. Strategy lets the algorithm vary independently from clients that use it.

```bash
dart run bin/strategy_pattern.dart
```

### Observer pattern
Defines a one-to-many dependency between objects so that when an object changes state, all it's dependents are notified and updated automatically.

```bash
dart run bin/observer_pattern.dart
```

### Decorator pattern
Attach additional responsibilities to an object dynamically. Decorator provides a flexible alternative to sub-classing for extending functionality.

```bash
dart run bin/decorator_pattern.dart
```

### Factory pattern
The Factory Method pattern defines an interface for creating an object, but lets subclasses decide which class to instantiate. Factory Method pattern lets a class defer instantiation to subclasses.

The Abstract Factory pattern provides an interface for creating families of related or dependent objects without specifying their concrete classes.

```bash
dart run bin/factory_pattern.dart
```

### Singleton pattern
The Singleton pattern ensures a class has only an instance and provides a global point of access to it.

```bash
dart run bin/singleton_pattern.dart
```

### Command pattern
Encapsulates a request as an object, thereby letting you parametrize clients with different requests, queue or log request, and support undo-able operations.

```bash
dart run bin/command_pattern.dart
```

### Adapter pattern
Converts the interface of a class into another interface the client expects. Adapter lets classes work together that couldn't otherwise because of incompatible interfaces.
```bash
dart run bin/adapter_pattern.dart
```

### Facade pattern
Provides a unified interface to a set of interfaces in a subsystem. Facade defines a higher-lever interface that makes the subsystem easier to use.
```bash
dart run bin/facade_pattern.dart
```

### Template Method pattern
Define the skeleton of an algorithm in an operation, deferring some steps to subclasses. Template Method lets subclasses redefine certain steps of an algorithm without changing the algorithm's structure.
```bash
dart run bin/template_method_pattern.dart
```

### Iterator pattern
Provides a way to access elements of aggregate object sequentially without exposing it's underlying representation.
```bash
dart run bin/iterator_pattern.dart
```

### Composite pattern
Allows to compose objects into tree structures to represent part-whole hierarchies. Composite lets clients treat individual objects and compositions of objects uniformly.
```bash
dart run bin/composite_pattern.dart
```

### State pattern
Allow an object to alter its behavior when its internal state changes. The object will appear to change its class
```bash
dart run bin/state_pattern.dart
```
