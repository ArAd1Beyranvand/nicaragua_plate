import 'package:plate_core/plate_core.dart';

import 'nicaragua_colors.dart';

/// Nicaragua as a `PlateCountry`. The plates carry no country block.
abstract final class NicaraguaCountry {
  static const PlateCountry nicaragua = PlateCountry(
    code: 'ni',
    captionLines: <String>[],
    panelColor: NicaraguaColors.ink,
    panelTextColor: NicaraguaColors.white,
    flagAspectRatio: 3 / 2,
  );
}
