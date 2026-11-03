import 'package:plate_core/plate_core.dart';

import 'nicaragua_colors.dart';

abstract final class NicaraguaCountry {
  static const PlateCountry nicaragua = PlateCountry(
    code: 'ni',
    panelColor: NicaraguaColors.ink,
    panelTextColor: NicaraguaColors.white,
    flagAspectRatio: 3 / 2,
  );
}
