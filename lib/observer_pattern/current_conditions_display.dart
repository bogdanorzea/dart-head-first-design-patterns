import 'package:dart_head_first_design_patterns/observer_pattern/display_element.dart';
import 'package:dart_head_first_design_patterns/observer_pattern/observer.dart';
import 'package:dart_head_first_design_patterns/observer_pattern/weather_station.dart';

class CurrentConditionsDisplay implements Observer, DisplayElement {
  final WeatherStation _weatherStation;

  double _humidity = 0.0;
  double _temperature = 0.0;

  CurrentConditionsDisplay(WeatherStation weatherStation) : _weatherStation = weatherStation {
    _weatherStation.registerObserver(this);
  }

  @override
  void display() {
    final temperatureString = _temperature.toStringAsFixed(2);
    final humidityString = _humidity.toStringAsFixed(2);

    print('Current conditions: $temperatureString°F degrees and $humidityString% humidity');
  }

  @override
  void update() {
    _humidity = _weatherStation.humidity;
    _temperature = _weatherStation.temperature;

    display();
  }
}
