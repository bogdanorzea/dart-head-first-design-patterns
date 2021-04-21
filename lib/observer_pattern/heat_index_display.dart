import 'package:dart_head_first_design_patterns/observer_pattern/display_element.dart';
import 'package:dart_head_first_design_patterns/observer_pattern/observer.dart';
import 'package:dart_head_first_design_patterns/observer_pattern/weather_station.dart';

class HeatIndexDisplay implements DisplayElement, Observer {
  final WeatherStation _weatherStation;

  double _heatIndex = 0.0;

  HeatIndexDisplay(WeatherStation weatherStation) : _weatherStation = weatherStation {
    _weatherStation.registerObserver(this);
  }

  double computeHeatIndex(double t, double rh) {
    return (16.923 +
            (0.185212 * t) +
            (5.37941 * rh) -
            (0.100254 * t * rh) +
            (0.00941695 * (t * t)) +
            (0.00728898 * (rh * rh)) +
            (0.000345372 * (t * t * rh)) -
            (0.000814971 * (t * rh * rh)) +
            (0.0000102102 * (t * t * rh * rh)) -
            (0.000038646 * (t * t * t)) +
            (0.0000291583 * (rh * rh * rh)) +
            (0.00000142721 * (t * t * t * rh)) +
            (0.000000197483 * (t * rh * rh * rh)) -
            (0.0000000218429 * (t * t * t * rh * rh)) +
            0.000000000843296 * (t * t * rh * rh * rh)) -
        (0.0000000000481975 * (t * t * t * rh * rh * rh));
  }

  @override
  void display() {
    print('Heat index is ${_heatIndex.toStringAsFixed(2)}');
  }

  @override
  void update() {
    _heatIndex = computeHeatIndex(_weatherStation.temperature, _weatherStation.humidity);

    display();
  }
}
