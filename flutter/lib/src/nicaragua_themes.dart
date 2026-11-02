import 'package:flutter/widgets.dart';
import 'package:plate_core/plate_core.dart';

import 'nicaragua_colors.dart';

abstract final class NicaraguaThemes {
  static const PlateTheme standard = PlateTheme(
    plateBackground: NicaraguaColors.white,
    plateBorder: NicaraguaColors.ink,
    ink: NicaraguaColors.ink,
    dividerColor: NicaraguaColors.ink,
    borderWidthRatio: 0.008,
    plateRadiusRatio: 0.05,
    activeColor: NicaraguaColors.ink,
    inactiveColor: NicaraguaColors.inactiveOnLight,
    alertColor: Color(0xFFD32F2F),
  );
}
