import 'package:plate_alphabet/plate_alphabet.dart';
import 'package:plate_core/plate_core.dart';

/// Nicaraguan plates use plain Latin letters and Western digits.
abstract final class NicaraguaAlphabets {
  static const PlateAlphabet letters = PlateAlphabetLatin.typed;
  static const PlateAlphabet digits = PlateAlphabetDigits.english;
}
