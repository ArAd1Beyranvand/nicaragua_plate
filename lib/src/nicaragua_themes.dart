import 'package:plate_core/plate_core.dart';

import 'nicaragua_colors.dart';

/// Nicaraguan plate theme: black on white with a brown frame.
abstract final class NicaraguaThemes {
  static const double _borderWidthRatio = 0.016;
  static const double _plateRadiusRatio = 0.04;

  static final PlateTheme standard = PlateTheme(
    plateBackground: NicaraguaColors.white,
    plateBorder: NicaraguaColors.ink,
    ink: NicaraguaColors.ink,
    dividerColor: NicaraguaColors.ink,
    borderWidthRatio: _borderWidthRatio,
    plateRadiusRatio: _plateRadiusRatio,
    activeColor: NicaraguaColors.ink,
    inactiveColor: NicaraguaColors.inactiveOnLight,
    alertColor: const Color(0xFFD32F2F),
  );
}
