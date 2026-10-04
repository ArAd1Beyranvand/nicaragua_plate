import 'package:plate_core/plate_core.dart';

/// Nicaraguan plate alphabets: Latin letters and digits.
abstract final class NicaraguaAlphabets {
  /// A–Z: 26 letters for region codes.
  static const PlateAlphabet letters = PlateAlphabet(
    id: 'ni.letters',
    characters: [
      'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
      'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
    ],
    input: AlphabetInput.typed,
    isNumeric: false,
  );

  /// 0–9: standard Arabic numerals.
  static const PlateAlphabet digits = PlateAlphabet(
    id: 'ni.digits',
    characters: ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'],
    input: AlphabetInput.typed,
    isNumeric: true,
  );
}
