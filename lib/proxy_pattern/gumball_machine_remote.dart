import 'dart:async';

abstract class GumballMachineRemote {
  FutureOr<int?> get count;
  FutureOr<String?> get location;
  FutureOr<String?> get stateDescription;

  static const String countMethodName = 'count';
  static const String locationMethodName = 'location';
  static const String stateMethodName = 'state';
}
