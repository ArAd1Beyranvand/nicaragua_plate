import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nicaragua_plate/nicaragua_plate.dart';
import 'package:plate_core/plate_core.dart';
import 'package:plate_core/testing.dart';

/// One golden per spec, rendered with a real font so the serial and the two
/// captions can be measured against the reference.
///
/// Regenerate with `flutter test --update-goldens` after a deliberate change.
void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    final loader = FontLoader('Roboto');
    final file = File('/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf');
    if (file.existsSync()) {
      loader.addFont(file.readAsBytes().then((b) => ByteData.view(b.buffer)));
    }
    await loader.load();
  });

  Future<void> renderGolden(
    WidgetTester tester,
    PlateSpec spec,
    String value,
    String name,
  ) async {
    final controller = PlateController.fromValues(spec, value.split('|'));
    await pumpPlateGolden(
      tester,
      controller,
      'goldens/$name.png',
      theme: NicaraguaThemes.standard,
      country: NicaraguaCountry.nicaragua,
      stage: Size(520, 520 * spec.canvasHeight / spec.canvasWidth),
    );
  }

  testWidgets(
    'Managua',
    (t) => renderGolden(t, NicaraguaPlates.managua, 'M|123|456', 'ni_managua'),
  );
  testWidgets(
    'Chontales',
    (t) =>
        renderGolden(t, NicaraguaPlates.department, 'CT|4361', 'ni_department'),
  );
  testWidgets(
    'Masaya',
    (t) => renderGolden(
      t,
      NicaraguaPlates.departmentShort,
      'MY|142',
      'ni_department_short',
    ),
  );
}
