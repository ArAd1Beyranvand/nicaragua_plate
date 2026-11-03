FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Nicaragua to view examples:

https://platexample.ir/#/discover/nicaragua:flutter

# nicaragua_plate

Nicaragua's licence plates for the plate_core library — the 2005 series for Managua and the departments, with its theme, alphabets and advisory validator.

## Languages

| Language | Folder | Example |
| --- | --- | --- |
| Flutter / Dart | [`flutter/`](https://github.com/ArAd1Beyranvand/nicaragua_plate/tree/main/flutter) | [platexample](https://platexample.ir/#/discover/nicaragua:flutter) |
| Kotlin | [`kotlin/`](https://github.com/ArAd1Beyranvand/nicaragua_plate/tree/main/kotlin) | [platexample](https://platexample.ir/#/discover/nicaragua:kotlin) |
| Python | [`python/`](https://github.com/ArAd1Beyranvand/nicaragua_plate/tree/main/python) | [platexample](https://platexample.ir/#/discover/nicaragua:python) |
| TypeScript | [`typescript/`](https://github.com/ArAd1Beyranvand/nicaragua_plate/tree/main/typescript) | [platexample](https://platexample.ir/#/discover/nicaragua:typescript) |

## Quick start

### Install

```yaml
dependencies:
  plate_core: ^0.12.0
  nicaragua_plate: ^0.1.0
```

### Use

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

## Specs

Each spec is one plate layout.

- `NicaraguaPlates.managua` — id `ni.managua`
- `NicaraguaPlates.department` — id `ni.department`
- `NicaraguaPlates.departmentShort` — id `ni.department_short`

## Themes

- `NicaraguaThemes.standard`

## Change it

`PlateCanvas` takes `spec:` (an entry of `NicaraguaPlates`) and `theme:` (an entry of `NicaraguaThemes`). Set `validator:` to `NicaraguaValidator()` and `autoValidate: true` to show validation hints.

## Also included

- `NicaraguaCountry` — the country panel.
- `NicaraguaValidator` — the plate validator.

## Plates

The 2005 series: a department code, then the number.

Managua (`M`) runs six digits printed 3 + 3, so its number is two slots;
text groups are `department`, `number` and, for the split, `number_tail`.

The map under the serial and the seal top left are not drawn: no freely
licensed artwork was found.

## Part of plate

Painted by [`plate_core`](https://pub.dev/packages/plate_core); alphabets shared through [`plate_alphabet`](https://pub.dev/packages/plate_alphabet); optional character picker in [`plate_keypad`](https://pub.dev/packages/plate_keypad).

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/nicaragua_plate/blob/main/LICENSE).
