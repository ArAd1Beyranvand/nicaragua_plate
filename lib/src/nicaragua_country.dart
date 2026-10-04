import 'package:plate_core/plate_core.dart';

import 'nicaragua_colors.dart';

/// Nicaragua as a `PlateCountry`. Nicaraguan plates do not display a country
/// block, so `noPanel` is set to true.
abstract final class NicaraguaCountry {
  static const PlateCountry nicaragua = PlateCountry(
    code: 'ni',
    captionLines: <String>[],
    panelColor: NicaraguaColors.ink,
    panelTextColor: NicaraguaColors.white,
    flagAspectRatio: 3 / 2,
  );
}
