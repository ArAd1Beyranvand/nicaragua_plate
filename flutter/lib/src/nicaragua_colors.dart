import 'package:flutter/widgets.dart';

/// Colours of the 2005 series, sampled from the matriculasdelmundo artwork:
/// a pure white field and black ink.
abstract final class NicaraguaColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color ink = Color(0xFF000000);

  /// Placeholder ink for an empty slot on a light field.
  static const Color inactiveOnLight = Color(0xFFB0B0B0);
}
