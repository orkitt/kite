# Theming

Kite builds on Flutter's `ThemeData` and `ThemeExtension` system.

## Create a theme

```dart
final lightTheme = KiteTheme.use(
  color: AppColors.lightColors,
  typography: KiteTypography.standard,
  brightness: Brightness.light,
);
```

## Read Kite tokens from context

```dart
final colors = context.colors;
final type = context.typography;
final theme = context.theme;
```

The package exposes `KiteColorsX`, `KiteTypographyX`, and `KiteThemeX` extensions on `BuildContext`.

## Design principle

Prefer Kite tokens over hard-coded values in component-level UI. This keeps light/dark mode and product-wide visual changes consistent.
