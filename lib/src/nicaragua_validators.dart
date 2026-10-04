/// Nicaraguan plate validators. These describe the allowed formats but do not
/// enforce them—they are advisory only.
abstract final class NicaraguaValidators {
  /// Standard format: 1–2 letters followed by 5 digits.
  /// Example: MQ00293, B12345.
  static bool isValidSerial(String value) {
    if (value.length < 6 || value.length > 7) return false;
    final letters = value.substring(0, value.length - 5).toUpperCase();
    final digits = value.substring(value.length - 5);
    return letters.isNotEmpty &&
        letters.length <= 2 &&
        letters.every((c) => c.compareTo('A') >= 0 && c.compareTo('Z') <= 0) &&
        digits.every((c) => c.compareTo('0') >= 0 && c.compareTo('9') <= 0);
  }
}
