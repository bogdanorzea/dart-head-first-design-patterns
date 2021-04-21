// ignore_for_file: unused_local_variable

import 'package:dart_head_first_design_patterns/observer_pattern/current_conditions_display.dart';
import 'package:dart_head_first_design_patterns/observer_pattern/forecast_display.dart';
import 'package:dart_head_first_design_patterns/observer_pattern/heat_index_display.dart';
import 'package:dart_head_first_design_patterns/observer_pattern/statistics_display.dart';
import 'package:dart_head_first_design_patterns/observer_pattern/weather_station.dart';

void main() {
  final weatherStation = WeatherStation();

  final currentDisplay = CurrentConditionsDisplay(weatherStation);
  final forecastDisplay = ForecastDisplay(weatherStation);
  final statisticsDisplay = StatisticsDisplay(weatherStation);
  final heatDisplay = HeatIndexDisplay(weatherStation);

  weatherStation.setMeasurements(80, 65, 30.4);
  weatherStation.setMeasurements(82, 70, 29.2);
  weatherStation.setMeasurements(78, 90, 29.2);
}
