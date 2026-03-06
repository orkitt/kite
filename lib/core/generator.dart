import 'dart:io';
import 'variable_resolver.dart';

class Generator {
  static void generate(
    Map<String, dynamic> template,
    Map<String, String> vars,
  ) {
    final folders = template['folders'] ?? [];
    final files = template['files'] ?? [];

    for (final folder in folders) {
      final path = VariableResolver.resolve(folder, vars);
      Directory("lib/src/$path").createSync(recursive: true);
      print("📁 created: lib/src/$path");
    }

    for (final file in files) {
      final rawPath = file['path'];
      final rawContent = file['content'];

      final path = VariableResolver.resolve(rawPath, vars);
      final content = VariableResolver.resolve(rawContent, vars);

      final fullPath = "lib/src/$path";

      File(fullPath).createSync(recursive: true);
      File(fullPath).writeAsStringSync(content);

      print("📄 created: lib/src/$path");
    }
  }
}