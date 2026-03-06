import 'package:args/command_runner.dart';

import 'package:kite/commands/create_command.dart';
import 'package:kite/commands/feature_command.dart';
import 'package:kite/commands/model_command.dart';
import 'package:kite/commands/route_command.dart';
import 'package:kite/commands/widget_command.dart';
// Code runner imports
import 'package:kite/commands/run_commands.dart';
import 'package:kite/commands/build_commands.dart';
import 'package:kite/commands/generate_commands.dart';

void main(List<String> args) {
  final runner = CommandRunner("lite", "Lite Flutter CLI")
    ..addCommand(CreateCommand())
    ..addCommand(FeatureCommand())
    ..addCommand(ModelCommand())
    ..addCommand(RouteCommand())
    ..addCommand(WidgetCommand())

    // Handle runner command case
    ..addCommand(RunCommand())
    ..addCommand(BuildCommand())
    ..addCommand(GenerateCommand());

  runner.run(args);
}
