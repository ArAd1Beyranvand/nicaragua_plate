import 'package:flutter/widgets.dart';

/// Colours of Nicaraguan licence plates. The current format is a brown/black
/// frame on white field with black text. Sample: MQ 00293, "NICARAGUA LIBRE",
/// "ESTATAL" for state vehicles.
abstract final class NicaraguaColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  /// Frame and text colour.
  static const Color ink = Color(0xFF1D1D1B);

  /// Placeholder ink for an empty slot on a light field.
  static const Color inactiveOnLight = Color(0xFFB0B0B0);
}
