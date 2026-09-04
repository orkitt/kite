# Feedback & overlays

## Dialog

```dart
final confirmed = await KiteDialog.confirm(
  context,
  title: 'Delete item?',
  message: 'This action cannot be undone.',
  destructive: true,
);
```

## Toast

`KiteToastVariant` supports `neutral`, `success`, `warning`, `error`, and `info`.

## Alert

`KiteAlertVariant` supports `neutral`, `info`, `success`, `warning`, and `error`.

## Loading and skeletons

Use `KiteProgress`, `KiteCircularProgress`, `KiteSkeleton`, and `KiteSkeletonText` for loading feedback.

Other overlays include `KiteSheet` and `KiteTooltip`.
