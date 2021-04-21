import 'package:dart_head_first_design_patterns/observer_pattern/display_element.dart';
import 'package:dart_head_first_design_patterns/observer_pattern/observer.dart';
import 'package:dart_head_first_design_patterns/observer_pattern/weather_station.dart';

class ForecastDisplay implements DisplayElement, Observer {
  final WeatherStation _weatherStation;

  double _currentPressure = 0.0;
  double _lastPressure = 0.0;

  ForecastDisplay(WeatherStation weatherStation) : _weatherStation = weatherStation {
    _weatherStation.registerObserver(this);
  }

  @override
  void display() {
    var displayString = 'Forecast: ';
    if (_currentPressure > _lastPressure) {
      displayString += 'Improving weather on the way!';
    } else if (_currentPressure == _lastPressure) {
      displayString += 'More of the same';
    } else if (_currentPressure < _lastPressure) {
      displayString += 'Watch out for cooler, rainy weather';
    }

    print(displayString);
  }

  @override
  void update() {
    _lastPressure = _currentPressure;
    _currentPressure = _weatherStation.pressure;

    display();
  }
}
