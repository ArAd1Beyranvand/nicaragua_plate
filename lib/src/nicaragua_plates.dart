import 'package:plate_core/plate_core.dart';

import 'nicaragua_alphabets.dart';
import 'nicaragua_country.dart';

/// Where the ink sits on a Nicaraguan plate, in millimetres.
///
/// Measured from a reference plate (MQ 00293, ESTATAL format).
/// Canvas: 335×155 mm (North American standard).
/// White field. Black text.
///
/// Layout:
/// * Caption "NICARAGUA LIBRE" at top: y 8–22 mm, height ~14 mm
/// * Serial (1–2 letters + 5 digits) centred: y 40–130 mm, height ~90 mm
/// * Bottom label "ESTATAL": y 135–150 mm
abstract final class _Layout {
  static const double width = 335;
  static const double height = 155;

  /// Top caption "NICARAGUA LIBRE"
  static const double captionTop = 8;
  static const double captionHeight = 14;

  /// Serial number area: 1–2 letters + 5 digits, centre-aligned
  static const double serialTop = 40;
  static const double serialHeight = 90;
  static const double serialLeft = 20;

  /// Bottom label "ESTATAL"
  static const double labelTop = 135;
  static const double labelHeight = 15;
}

/// Nicaragua's plate spec: black on white with brown frame.
///
/// Standard format: 1–2 region letters (A–Z) followed by 5 digits (0–9).
/// Example: MQ 00293.
///
/// Two variants:
/// * [standard] — regular private or commercial vehicles
/// * [estatal] — state-owned vehicles (adds "ESTATAL" label at bottom)
///
/// Text groups: `letters`, `digits`.
abstract final class NicaraguaPlates {
  static const PlateSpec standard = PlateSpec(
    id: 'ni.standard',
    country: NicaraguaCountry.nicaragua,
    canvasWidth: _Layout.width,
    canvasHeight: _Layout.height,
    panel: PlatePanel(
      box: PlateBox(0, 0, 0, 0),
    ),
    slots: [
      // Region letters: 1–2 letters
      PlateSlot(
        alphabet: NicaraguaAlphabets.letters,
        box: PlateBox(
          _Layout.serialLeft,
          _Layout.serialTop,
          80,
          _Layout.serialHeight,
        ),
      ),
      // Serial digits: 5 digits
      PlateSlot(
        alphabet: NicaraguaAlphabets.digits,
        box: PlateBox(
          _Layout.serialLeft + 90,
          _Layout.serialTop,
          205,
          _Layout.serialHeight,
        ),
      ),
    ],
    labels: [
      PlateLabel(
        text: 'NICARAGUA LIBRE',
        box: PlateBox(
          0,
          _Layout.captionTop,
          _Layout.width,
          _Layout.captionHeight,
        ),
        glyphHeight: 11,
      ),
    ],
  );

  static const PlateSpec estatal = PlateSpec(
    id: 'ni.estatal',
    country: NicaraguaCountry.nicaragua,
    canvasWidth: _Layout.width,
    canvasHeight: _Layout.height,
    panel: PlatePanel(
      box: PlateBox(0, 0, 0, 0),
    ),
    slots: [
      // Region letters: 1–2 letters
      PlateSlot(
        alphabet: NicaraguaAlphabets.letters,
        box: PlateBox(
          _Layout.serialLeft,
          _Layout.serialTop,
          80,
          _Layout.serialHeight,
        ),
      ),
      // Serial digits: 5 digits
      PlateSlot(
        alphabet: NicaraguaAlphabets.digits,
        box: PlateBox(
          _Layout.serialLeft + 90,
          _Layout.serialTop,
          205,
          _Layout.serialHeight,
        ),
      ),
    ],
    labels: [
      PlateLabel(
        text: 'NICARAGUA LIBRE',
        box: PlateBox(
          0,
          _Layout.captionTop,
          _Layout.width,
          _Layout.captionHeight,
        ),
        glyphHeight: 11,
      ),
      PlateLabel(
        text: 'ESTATAL',
        box: PlateBox(
          0,
          _Layout.labelTop,
          _Layout.width,
          _Layout.labelHeight,
        ),
        glyphHeight: 10,
      ),
    ],
  );
}
