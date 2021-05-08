import 'command.dart';

class MacroCommand implements Command {
  final List<Command> commands;

  MacroCommand(this.commands);

  @override
  void execute() => commands.forEach((c) => c.execute());

  @override
  void undo() => commands.forEach((c) => c.undo());
}
