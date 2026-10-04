import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nicaragua_plate/nicaragua_plate.dart';
import 'package:plate_core/plate_core.dart';

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
    final controller = PlateController.fromValues(spec, <String?>[
      for (final c in value.split('')) c,
    ]);
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: SizedBox(
              width: 520,
              height: 520 * spec.canvasHeight / spec.canvasWidth,
              child: PlateThemeScope(
                theme: NicaraguaThemes.standard,
                child: PlateView(
                  controller: controller,
                  theme: NicaraguaThemes.standard,
                  country: NicaraguaCountry.nicaragua,
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await expectLater(
      find.byType(PlateView),
      matchesGoldenFile('goldens/$name.png'),
    );
    await tester.pumpWidget(const SizedBox.shrink());
    controller.dispose();
  }

  testWidgets(
    'Managua',
    (t) => renderGolden(t, NicaraguaPlates.managua, 'M123456', 'ni_managua'),
  );
  testWidgets(
    'Chontales',
    (t) => renderGolden(
      t,
      NicaraguaPlates.department,
      'CT4361',
      'ni_department',
    ),
  );
  testWidgets(
    'Masaya',
    (t) => renderGolden(
      t,
      NicaraguaPlates.departmentShort,
      'MY142',
      'ni_department_short',
    ),
  );
}
