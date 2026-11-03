FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Nicaragua to view examples:

https://platexample.ir/#/discover/nicaragua:python

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

### Install (Python)

Copy `python/plates/countries/nicaragua/` into `plate_core/python/plates/countries/`.

Then run the tests from `plate_core/python/`: `pytest`.

### Use

```python
from plates.countries.nicaragua.data import SPECS, THEMES

spec = SPECS["ni.managua"]
theme = THEMES["NicaraguaThemes.standard"]
print(spec.id)
```

## Specs

The specs are the same in every language (they come from shared data).

- `ni.managua`
- `ni.department`
- `ni.department_short`

## Themes

- `NicaraguaThemes.standard`

## Change it

- Pick a spec: use another key of `SPECS`.
- Pick a theme: use another key of `THEMES`.
- Validators: `VALIDATORS` maps the names `NicaraguaValidator` to classes.

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/nicaragua_plate/blob/main/LICENSE).
