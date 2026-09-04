# Colors

`KiteColors` is a `ThemeExtension<KiteColors>` and is the package's semantic color system.

```dart
final colors = context.colors;

Container(
  color: colors.card,
  child: Text(
    'Hello',
    style: TextStyle(color: colors.textPrimary),
  ),
)
```

Use semantic tokens such as surface/card/text/border/primary states instead of hard-coded component colors.
