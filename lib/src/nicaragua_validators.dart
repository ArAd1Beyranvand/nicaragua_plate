import 'package:plate_core/plate_core.dart';

/// Judges a 2005-series value. Reports, never throws, never bars a keystroke.
///
/// Quiet until the number is in. Then the department code must be one seen on
/// the series, and Managua (`M`) takes six digits where every other code takes
/// three or four.
class NicaraguaValidator extends GatedPlateValidator {
  const NicaraguaValidator();

  @override
  String get gateGroup => 'number';

  /// Codes confirmed on 2005-series plates or in the sources' lists. Boaco,
  /// Carazo, Madriz, Río San Juan and Rivas certainly have codes, but none was
  /// confirmed, so they are not guessed at here.
  static const Map<String, String> departments = <String, String>{
    'M': 'Managua',
    'MY': 'Masaya',
    'MT': 'Matagalpa',
    'CH': 'Chinandega',
    'CT': 'Chontales',
    'NS': 'Nueva Segovia',
    'ES': 'Estelí',
    'JI': 'Jinotega',
    'GR': 'Granada',
    'LE': 'León',
    'RN': 'Atlántico Norte',
    'RS': 'Atlántico Sur',
    'PN': 'Policía Nacional',
    'CD': 'Diplomatic corps',
    'CC': 'Consular corps',
    'MI': 'International mission',
  };

  static const String reasonDepartment = 'The letters name no department.';
  static const String reasonManagua = 'Managua numbers have six digits.';
  static const String reasonNumber = 'The number has three or four digits.';

  @override
  PlateValidation judge(PlateEntry entry) {
    // A split Managua number is not finished until its second half is in.
    if (entry.spec.indicesOfGroup('number_tail').isNotEmpty &&
        entry.group('number_tail').isEmpty) {
      return const PlateValidation.valid();
    }
    final code = entry.group('department');
    final number = entry.group('number') + entry.group('number_tail');
    if (!departments.containsKey(code)) {
      return const PlateValidation.invalid(reasonDepartment);
    }
    if (!isDigits(number)) {
      return const PlateValidation.invalid(reasonNumber);
    }
    if (code == 'M') {
      return number.length == 6
          ? const PlateValidation.valid()
          : const PlateValidation.invalid(reasonManagua);
    }
    return number.length == 3 || number.length == 4
        ? const PlateValidation.valid()
        : const PlateValidation.invalid(reasonNumber);
  }
}
