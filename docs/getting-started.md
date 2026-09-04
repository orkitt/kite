# Installation

Kite `1.0.1` requires Dart `^3.12.2` and Flutter `>=3.22.0`.

```yaml
# pubspec.yaml
dependencies:
  kite: ^1.0.1
```

Then import the public barrel:

```dart
import 'package:kite/kite_ui.dart';
```

## Recommended root

For most apps, start with `KiteApp`:

```dart
void main() {
  runApp(
    KiteApp(
      title: 'Example',
      theme: KiteTheme.use(
        color: AppColors.lightColors,
        brightness: Brightness.light,
      ),
      home: const HomePage(),
    ),
  );
}
```

If your app uses Router 2.0 or `go_router`, use `KiteApp.router`.

```dart
KiteApp.router(
  routerConfig: router,
  theme: lightTheme,
  darkTheme: darkTheme,
  themeMode: ThemeMode.system,
)
```
