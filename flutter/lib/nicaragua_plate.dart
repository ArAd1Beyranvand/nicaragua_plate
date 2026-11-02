/// Nicaragua's licence plates for the `plate_core` library.
///
/// The 2005 series: black on white, a department code of one or two letters
/// and a number of three to six digits.
library;

// TODO(py): [D5] one module `plates.countries.nicaragua`; assets via importlib.resources.
// TODO(ts): [D5] one subpath export `./countries/nicaragua`; tree-shakable.
// TODO(kt): [D5] package `countries.nicaragua` in the countries module.
export 'src/nicaragua_alphabets.dart';
export 'src/nicaragua_colors.dart';
export 'src/nicaragua_country.dart';
export 'src/nicaragua_plates.dart';
export 'src/nicaragua_themes.dart';
export 'src/nicaragua_validators.dart';
