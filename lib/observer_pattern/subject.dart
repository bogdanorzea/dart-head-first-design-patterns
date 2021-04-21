import 'package:dart_head_first_design_patterns/observer_pattern/observer.dart';

abstract class Subject {
  void registerObserver(Observer observer);
  void removeObservers(Observer observer);
  void notifyObservers();
}
