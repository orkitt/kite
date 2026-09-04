# Buttons & actions

## KiteButton

`KiteButtonVariant` supports `filled`, `outline`, `ghost`, `soft`, and `danger`.

`KiteButtonSize` supports `small`, `medium`, and `large`.

```dart
KiteButton(
  label: 'Continue',
  onPressed: submit,
)
```

```dart
KiteButton(
  label: 'Delete',
  variant: KiteButtonVariant.danger,
  onPressed: delete,
)
```

## KiteIconButton

`KiteIconButtonVariant` supports `ghost`, `soft`, `outline`, `filled`, and `danger`.

## Context menu

Use `KiteContextMenu<T>` with typed `KiteContextMenuItem<T>` values for compact action menus.
