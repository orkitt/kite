# KiteApp

`KiteApp` is Kite's root application widget. It supports both classic Navigator routing and Router 2.0 while installing Kite's responsive lifecycle support and normal Material/Cupertino localization infrastructure.

## Navigator mode

```dart
KiteApp(
  navigatorKey: navigatorKey,
  home: const HomePage(),
  routes: {
    '/settings': (_) => const SettingsPage(),
  },
  theme: lightTheme,
  darkTheme: darkTheme,
  themeMode: ThemeMode.system,
)
```

## Router mode

```dart
KiteApp.router(
  routerConfig: router,
  theme: lightTheme,
  darkTheme: darkTheme,
)
```

## Useful debugging options

`KiteApp` exposes `debugGrid` and `debugShowKiteBanner` in addition to Flutter's standard debug flags.
