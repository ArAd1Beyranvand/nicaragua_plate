FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Nicaragua to view examples:

https://platexample.ir/#/discover/nicaragua

# nicaragua_plate

Nicaragua's licence plates for the `plate_core` library. The 2005 series: black on white, a department code of one or two letters and a number of three to six digits.

## Install

```yaml
dependencies:
  plate_core: ^0.12.0
  nicaragua_plate: ^0.1.0
```

## Use

```dart
import 'package:plate_core/plate_core.dart';
import 'package:nicaragua_plate/nicaragua_plate.dart';

PlateCanvas(
  spec: NicaraguaPlates.managua,
  theme: NicaraguaThemes.standard,
  validator: const NicaraguaValidator(),
  autoValidate: true,
  onChooseCharacter: noCharacterChooser,
);
```

## Contains

- `NicaraguaCountry` — country panel: `nicaragua`.
- `NicaraguaPlates` — 3 plate specs: `managua`, `department`, `departmentShort`.
- `NicaraguaThemes` — 1 theme: `standard`.
- `NicaraguaValidator` — advisory validator; flags the frame, never blocks a keystroke.

## Plates

The 2005 series: a department code, then the number.

Managua (`M`) runs six digits printed 3 + 3, so its number is two slots;
text groups are `department`, `number` and, for the split, `number_tail`.

The map under the serial and the seal top left are not drawn: no freely
licensed artwork was found.

## Part of plate

Painted by [`plate_core`](https://pub.dev/packages/plate_core); alphabets shared through [`plate_alphabet`](https://pub.dev/packages/plate_alphabet); optional character picker in [`plate_keypad`](https://pub.dev/packages/plate_keypad).

