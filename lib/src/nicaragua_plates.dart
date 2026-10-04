import 'package:plate_core/plate_core.dart';

import 'nicaragua_alphabets.dart';
import 'nicaragua_country.dart';

/// Where the ink sits on the 2005-series plate, in millimetres on the
/// 300 × 152 mm US-size blank.
///
/// Measured from the matriculasdelmundo artwork of M 123 456 (500 × 250 px,
/// 0.6 mm/px) and checked against the photographs of M 027 557 and CT 4361.
abstract final class _Layout {
  static const double width = 300;
  static const double height = 152;

  // "NICARAGUA": serif caps, ink y 5.4–22.8, centred on x 147.6.
  static const double captionTop = 2;
  static const double captionHeight = 32;

  // Serial ink y 38.4–104.4 (66 mm). Ink is ~0.55 of the slot, so the slot is
  // 120 tall around the ink's centre line.
  static const double serialTop = 11.4;
  static const double serialHeight = 120;

  // Cell centres step 37.2 mm. The department code is set off from the number
  // by an extra 8 mm, and Managua's six digits split 3 + 3 by an extra 21 mm.
  static const double pitch = 37.2;
  static const double codeGap = 8;
  static const double splitGap = 21;

  // "CENTROAMERICA": ink y 124–145, centred on x 146.
  static const double footerTop = 116;
  static const double footerHeight = 36;

  // The black block bottom right.
  static const PlateBox block = PlateBox(267.6, 132, 18, 10.2);
}

/// Nicaragua's 2005 series, issued by the Policía Nacional: black on white,
/// "NICARAGUA" above and "CENTROAMERICA" below the serial.
///
/// The serial is a department code of one or two letters, then the number.
/// Managua (`M`) runs six digits printed 3 + 3; the other departments run
/// three or four. One cell per character.
///
/// Text groups: `department`, then `number` (and `number_tail` for the second
/// half of a split Managua number).
///
/// Not drawn: the light-blue map of Nicaragua under the serial and the
/// coat-of-arms seal top left — no freely licensed artwork of either was
/// found, so they are left off rather than approximated.
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
    final span =
        (letters + digits) * _Layout.pitch +
        _Layout.codeGap +
        (split ? _Layout.splitGap : 0);
    final left = (_Layout.width - span) / 2;
    final digitsLeft = left + letters * _Layout.pitch + _Layout.codeGap;
    final tailLeft = digitsLeft + head * _Layout.pitch + _Layout.splitGap;

    List<PlateSlot> run(PlateAlphabet a, int count, double from) =>
        plateRegister(
          alphabet: a,
          count: count,
          left: from,
          top: _Layout.serialTop,
          width: _Layout.pitch,
          height: _Layout.serialHeight,
        );

    final slots = <PlateSlot>[
      ...run(NicaraguaAlphabets.letters, letters, left),
      ...run(NicaraguaAlphabets.digits, head, digitsLeft),
      if (split) ...run(NicaraguaAlphabets.digits, digits - head, tailLeft),
    ];

    return PlateSpec(
      id: id,
      country: NicaraguaCountry.nicaragua,
      canvasWidth: _Layout.width,
      canvasHeight: _Layout.height,
      panel: const PlatePanel(box: PlateBox(0, 0, 0, 0)),
      noPanel: true,
      slots: slots,
      textGroups: <PlateTextGroup>[
        PlateTextGroup(<int>[
          for (var i = 0; i < letters; i++) i,
        ], key: 'department'),
        PlateTextGroup(<int>[
          for (var i = letters; i < letters + head; i++) i,
        ], key: 'number'),
        if (split)
          PlateTextGroup(<int>[
            for (var i = letters + head; i < slots.length; i++) i,
          ], key: 'number_tail'),
      ],
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
          glyphHeight: _Layout.footerHeight,
        ),
      ],
    );
  }
}
