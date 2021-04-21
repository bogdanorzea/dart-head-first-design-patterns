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
