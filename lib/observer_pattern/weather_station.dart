import 'package:dart_head_first_design_patterns/observer_pattern/observer.dart';
import 'package:dart_head_first_design_patterns/observer_pattern/subject.dart';

class WeatherStation implements Subject {
  double humidity;
  double pressure;
  double temperature;

  void setMeasurements(double temperature, double humidity, double pressure) {
    this.humidity = humidity;
    this.pressure = pressure;
    this.temperature = temperature;

    notifyObservers();
  }

  final _observers = <Observer>[];

  @override
  void notifyObservers() {
    _observers.forEach((o) => o.update());
  }

  @override
  void registerObserver(Observer observer) {
    _observers.add(observer);
  }

  @override
  void removeObservers(Observer observer) {
    _observers.remove(observer);
  }
}
