import 'package:plate_core/plate_core.dart';

/// Nicaraguan plate alphabets: Latin letters and digits.
abstract final class NicaraguaAlphabets {
  /// A–Z: 23 letters (no Ñ on standard plates).
  static const PlateAlphabet letters = PlateAlphabet(
    glyphs: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
    name: 'letters',
  );

  /// 0–9: standard Arabic numerals.
  static const PlateAlphabet digits = PlateAlphabet(
    glyphs: '0123456789',
    name: 'digits',
  );
}
