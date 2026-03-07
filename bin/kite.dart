import 'package:args/command_runner.dart';
import 'package:kite/kite.dart';

void main(List<String> args) {
  final runner = CommandRunner("lite", "Lite Flutter CLI")
    ..addCommand(CreateCommand())
    ..addCommand(FeatureCommand())
    ..addCommand(ModelCommand())
    ..addCommand(RouteCommand())
    ..addCommand(WidgetCommand())
    ..addCommand(ServiceCommand())
    ..addCommand(DoctorCommand())

    // Handle runner command case
    ..addCommand(RunCommand())
    ..addCommand(BuildCommand())
    ..addCommand(GenerateCommand());

  runner.run(args);
}
