# Responsive UI

Kite uses three canonical layout sizes:

| Size | Width |
| --- | --- |
| `compact` | `< 700` |
| `medium` | `700 .. < 1100` |
| `expanded` | `>= 1100` |

```dart
final size = KiteResponsive.sizeOf(context);

final columns = size.columns(
  compact: 1,
  medium: 2,
  expanded: 4,
);
```

## Responsive data

```dart
final responsive = KiteResponsive.of(context);

if (responsive.compact) {
  // phone layout
}
```

## Responsive widgets

The public API also includes:

- `ResponsiveKite`
- `KiteResponsiveLayout`
- `KitePage`
- `KiteGrid` / `KiteGridItem`
- `KiteSplit`
- `KiteSplitLayout`

Use these when the layout itself changes across breakpoints rather than only individual values.
