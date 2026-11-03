import 'package:plate_core/plate_core.dart';

import 'nicaragua_alphabets.dart';
import 'nicaragua_country.dart';

/// Ink positions in millimetres on the 300 × 152 mm blank, measured from the
/// matriculasdelmundo artwork of M 123 456.
abstract final class _Layout {
  static const double width = 300, height = 152;

  // "NICARAGUA": serif caps, ink y 5.4–22.8, centred on x 147.6.
  static const double captionTop = 2, captionHeight = 32;

  // Serial ink y 38.4–104.4 (66 mm). Ink is ~0.55 of the slot, so the slot is
  // 120 tall around the ink's centre line.
  static const double serialTop = 11.4, serialHeight = 120;

  // Cell centres step 37.2 mm. The department code is set off from the number
  // by an extra 8 mm, and Managua's six digits split 3 + 3 by an extra 21 mm.
  static const double pitch = 37.2, codeGap = 8, splitGap = 21;

  // "CENTROAMERICA": ink y 124–145, x 78–214. The plate's face is condensed;
  // the theme's is not, so the glyph is sized to the measured width and the
  // ink comes out about half the measured height.
  static const double footerTop = 122, footerHeight = 22;

  // The black block bottom right.
  static const PlateBox block = PlateBox(267.6, 132, 18, 10.2);
}

/// The 2005 series: a department code, then the number.
///
/// Managua (`M`) runs six digits printed 3 + 3, so its number is two slots;
/// text groups are `department`, `number` and, for the split, `number_tail`.
///
/// The map under the serial and the seal top left are not drawn: no freely
/// licensed artwork was found.
abstract final class NicaraguaPlates {
  /// Managua: `M 123 456`.
  static final PlateSpec managua = _build(
    id: 'ni.managua',
    letters: 1,
    digits: 6,
    split: true,
  );

  /// Departments with a four-digit number: `CT 4361`.
  static final PlateSpec department = _build(
    id: 'ni.department',
    letters: 2,
    digits: 4,
  );

  /// Departments with a three-digit number: `MY 142`, `PN 262`.
  static final PlateSpec departmentShort = _build(
    id: 'ni.department_short',
    letters: 2,
    digits: 3,
  );

  static final List<PlateSpec> all = <PlateSpec>[
    managua,
    department,
    departmentShort,
  ];

  static PlateSpec _build({
    required String id,
    required int letters,
    required int digits,
    bool split = false,
  }) {
    final head = split ? digits ~/ 2 : digits;
    final slots = plateRow(
      <PlateRowItem>[
        PlateRowRun(NicaraguaAlphabets.letters, letters, group: 'department'),
        const PlateRowGap(_Layout.codeGap),
        PlateRowRun(NicaraguaAlphabets.digits, head, group: 'number'),
        if (split) ...<PlateRowItem>[
          const PlateRowGap(_Layout.splitGap),
          PlateRowRun(
            NicaraguaAlphabets.digits,
            digits - head,
            group: 'number_tail',
          ),
        ],
      ],
      centre: _Layout.width / 2,
      top: _Layout.serialTop,
      height: _Layout.serialHeight,
      pitch: _Layout.pitch,
    ).slots;

    return PlateSpec(
      id: id,
      country: NicaraguaCountry.nicaragua,
      canvasWidth: _Layout.width,
      canvasHeight: _Layout.height,
      slots: slots,
      rules: const <PlateRule>[PlateRule(box: _Layout.block)],
      labels: const <PlateLabel>[
        PlateLabel(
          text: 'NICARAGUA',
          box: PlateBox(50, _Layout.captionTop, 195, _Layout.captionHeight),
          glyphHeight: _Layout.captionHeight,
        ),
        PlateLabel(
          text: 'CENTROAMERICA',
          box: PlateBox(70, _Layout.footerTop, 152, _Layout.footerHeight),
          glyphHeight: 21,
        ),
      ],
    );
  }
}
