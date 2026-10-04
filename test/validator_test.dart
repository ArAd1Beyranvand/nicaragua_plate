import 'package:flutter_test/flutter_test.dart';
import 'package:nicaragua_plate/nicaragua_plate.dart';
import 'package:plate_core/plate_core.dart';

void main() {
  const v = NicaraguaValidator();

  PlateValidation judge(PlateSpec spec, List<String?> values) =>
      v.validate(PlateEntry(spec: spec, values: values));

  List<String?> chars(String value) => value.split('');

  test('the photographed plates are valid', () {
    expect(judge(NicaraguaPlates.managua, chars('M027557')).isValid, isTrue);
    expect(judge(NicaraguaPlates.department, chars('CT4361')).isValid, isTrue);
    expect(
      judge(NicaraguaPlates.departmentShort, chars('MY142')).isValid,
      isTrue,
    );
  });

  test('an unknown department code is reported', () {
    expect(
      judge(NicaraguaPlates.department, chars('QQ1234')).reason,
      NicaraguaValidator.reasonDepartment,
    );
  });

  test('Managua needs six digits', () {
    expect(
      judge(NicaraguaPlates.department, <String?>['M', null, '1', '2', '3', '4'])
          .reason,
      NicaraguaValidator.reasonManagua,
    );
  });

  test('a half-typed Managua number is not judged yet', () {
    expect(
      judge(NicaraguaPlates.managua, <String?>[
        'M', '0', '2', '7', null, null, null,
      ]).isValid,
      isTrue,
    );
  });

  test('every spec passes debugValidateSpec', () {
    for (final s in NicaraguaPlates.all) {
      debugValidateSpec(s);
    }
  });
}
