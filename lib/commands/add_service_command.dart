import 'package:args/command_runner.dart';
import '../core/json_loader.dart';
import '../core/generator.dart';

class AddServiceCommand extends Command {
  @override
  final name = "service";

  @override
  final description = "Add a service";

  AddServiceCommand() {
    argParser.addOption("name");
  }

  @override
  void run() {
    final serviceName = argResults?['name'];

    if (serviceName == null) {
      print("❌ Please provide service name");
      return;
    }

    final template = JsonLoader.load("templates/service.json");

    Generator.generate(template, {
      "service": serviceName,
    });

    print("✅ Service $serviceName created");
  }
}