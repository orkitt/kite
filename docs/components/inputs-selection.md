# Inputs & selection

## KiteInput

```dart
KiteInput(
  label: 'Email',
  hint: 'name@example.com',
  type: KiteInputType.email,
  controller: emailController,
)
```

`KiteInputType` currently contains `text`, `password`, `phone`, `email`, and `number`.

## OTP

```dart
KiteOtpInput(
  length: 6,
  onCompleted: (code) {
    // verify
  },
)
```

## Date picker

```dart
final date = await KiteDatePicker.show(
  context,
  initialDate: DateTime.now(),
  helpText: 'Choose date',
);
```

## Time picker

```dart
final time = await KiteTimePicker.show(
  context,
  initialTime: TimeOfDay.now(),
);
```

Also see `KiteCheckbox`, `KiteRadioGroup`, `KiteDropdown`, `KiteSlider`, `KiteSwitch`, `KiteToggle`, `KiteToggleGroup`, `KiteCalendar`, and `KiteTextArea` in the API surface.
