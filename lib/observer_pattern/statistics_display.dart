import 'package:dart_head_first_design_patterns/observer_pattern/display_element.dart';
import 'package:dart_head_first_design_patterns/observer_pattern/observer.dart';
import 'package:dart_head_first_design_patterns/observer_pattern/weather_station.dart';

class StatisticsDisplay implements Observer, DisplayElement {
  final WeatherStation _weatherStation;

  double maxTemp = 0.0;
  double minTemp = 200;
  double tempSum = 0.0;
  int numReadings = 0;

  StatisticsDisplay(WeatherStation weatherStation) : _weatherStation = weatherStation {
    _weatherStation.registerObserver(this);
  }

  @override
  void update() {
    final temp = _weatherStation.temperature;
    tempSum += temp;
    numReadings++;

    if (temp > maxTemp) {
      maxTemp = temp;
    }

    if (temp < minTemp) {
      minTemp = temp;
    }

    display();
  }

  @override
  void display() {
    print('Avg/Max/Min temperature = ${tempSum / numReadings}/$maxTemp/$minTemp');
  }
}
