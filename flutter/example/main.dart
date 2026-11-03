import 'package:flutter/widgets.dart';
import 'package:plate_core/plate_core.dart';
import 'package:nicaragua_plate/nicaragua_plate.dart';

void main() => runApp(
  PlateExampleApp(
    spec: NicaraguaPlates.managua,
    theme: NicaraguaThemes.standard,
  ),
);
