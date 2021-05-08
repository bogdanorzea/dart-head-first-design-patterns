import 'package:dart_head_first_design_patterns/command_pattern/devices.dart';
import 'package:dart_head_first_design_patterns/command_pattern/commands.dart';
import 'package:dart_head_first_design_patterns/command_pattern/remote_control.dart';
import 'package:dart_head_first_design_patterns/command_pattern/simple_remote_control.dart';

import 'utils.dart';

void main() {
  final logger = Log.instance;

  logger.red('Simple remote example');
  simpleRemoteExample();

  logger.red('\nRemote example');
  remoteExample();

  logger.red('\nRemote with undo example');
  undoExample();

  logger.red('\nRemote with a macro command example');
  macroExample();
}

void simpleRemoteExample() {
  final light = Light('Kitchen');
  final lightOnCommand = LightOnCommand(light);

  final garageDoor = GarageDoor('Garage');
  final garageDoorOpenCommand = GarageDoorOpenCommand(garageDoor);

  final simpleLightRemote = SimpleRemoteControl();
  simpleLightRemote
    ..slot = lightOnCommand
    ..buttonWasPressed()
    ..slot = garageDoorOpenCommand
    ..buttonWasPressed();
}

void remoteExample() {
  final kitchenLight = Light('Kitchen');
  final kitchenLightOnCommand = LightOnCommand(kitchenLight);
  final kitchenLightOffCommand = LightOffCommand(kitchenLight);

  final livingRoomLight = Light('Living room');
  final livingRoomLightOnCommand = LightOnCommand(livingRoomLight);
  final livingRoomLightOffCommand = LightOffCommand(livingRoomLight);

  final ceilingFan = CeilingFan('Living room');
  final ceilingFanOnCommand = CeilingFanHighCommand(ceilingFan);
  final ceilingFanOffCommand = CeilingFanOffCommand(ceilingFan);

  final garageDoor = GarageDoor('Garage');
  final garageDoorOpenCommand = GarageDoorOpenCommand(garageDoor);
  final garageDoorCloseCommand = GarageDoorCloseCommand(garageDoor);

  final stereo = Stereo('Living room');
  final stereoWithCdOnCommand = StereoOnWithCdCommand(stereo);
  final stereoOffCommand = StereoOffCommand(stereo);

  final remoteControl = RemoteControl()
    ..setCommand(0, kitchenLightOnCommand, kitchenLightOffCommand)
    ..setCommand(1, livingRoomLightOnCommand, livingRoomLightOffCommand)
    ..setCommand(2, ceilingFanOnCommand, ceilingFanOffCommand)
    ..setCommand(3, stereoWithCdOnCommand, stereoOffCommand)
    ..setCommand(4, garageDoorOpenCommand, garageDoorCloseCommand);

  print(remoteControl);

  remoteControl
    ..onButtonWasPressed(0)
    ..offButtonWasPressed(0)
    ..onButtonWasPressed(1)
    ..offButtonWasPressed(1)
    ..onButtonWasPressed(2)
    ..offButtonWasPressed(2)
    ..onButtonWasPressed(3)
    ..offButtonWasPressed(3)
    ..onButtonWasPressed(4)
    ..offButtonWasPressed(4);
}

void undoExample() {
  final light = Light('Kitchen');
  final lightOnCommand = LightOnCommand(light);
  final lightOffCommand = LightOffCommand(light);

  final ceilingFan = CeilingFan('Living room');
  final ceilingFanLowCommand = CeilingFanLowCommand(ceilingFan);
  final ceilingFanMediumCommand = CeilingFanMediumCommand(ceilingFan);
  final ceilingFanHighCommand = CeilingFanHighCommand(ceilingFan);
  final ceilingFanOffCommand = CeilingFanOffCommand(ceilingFan);

  final simpleLightRemote = RemoteControl();
  simpleLightRemote
    ..setCommand(0, lightOnCommand, lightOffCommand)
    ..onButtonWasPressed(0)
    ..undoButtonPressed()
    ..setCommand(1, ceilingFanLowCommand, ceilingFanOffCommand)
    ..setCommand(2, ceilingFanMediumCommand, ceilingFanOffCommand)
    ..setCommand(3, ceilingFanHighCommand, ceilingFanOffCommand)
    ..onButtonWasPressed(2)
    ..onButtonWasPressed(3)
    ..undoButtonPressed();
}

void macroExample() {
  final light = Light('Living room');
  final lightOnCommand = LightOnCommand(light);

  final stereo = Stereo('Living room');
  final stereoOnWithCdCommand = StereoOnWithCdCommand(stereo);

  final ceilingFan = CeilingFan('Living room');
  final ceilingFanHighCommand = CeilingFanHighCommand(ceilingFan);

  final macroCommand = MacroCommand([lightOnCommand, stereoOnWithCdCommand, ceilingFanHighCommand]);

  final simpleLightRemote = SimpleRemoteControl();
  simpleLightRemote
    ..slot = macroCommand
    ..buttonWasPressed()
    ..undoButtonPressed();
}
