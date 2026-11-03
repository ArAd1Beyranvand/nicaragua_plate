FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Nicaragua to view examples:

https://platexample.ir/#/discover/nicaragua:kotlin

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

### Install (Kotlin)

Copy `kotlin/src/commonMain/kotlin/plates/countries/nicaragua/` into `plate_core/kotlin/src/commonMain/kotlin/plates/countries/`.

Then run the tests from `plate_core/kotlin/`: `./gradlew jvmTest`.

### Use

```kotlin
import plates.countries.nicaragua.country

val spec = country.specs["ni.managua"]
println(country.pkg)
```

## Specs

The specs are the same in every language (they come from shared data).

- `ni.managua`
- `ni.department`
- `ni.department_short`

## Themes

- `NicaraguaThemes.standard`

## Change it

- Specs: `country.specs`, by id.
- Themes: `country.themes`.
- Validators: `country.validators` (`NicaraguaValidator`).

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/nicaragua_plate/blob/main/LICENSE).
