import 'package:fhir_r4/fhir_r4.dart';

/// Extension on [StructureMapGroupRuleSource] to get the value of the source.
extension StructureMapParameterExtension on StructureMapParameter {
  /// Returns the value of the parameter as a [PrimitiveType] type.
  // ignore: strict_raw_type
  PrimitiveType? get value => valueX as PrimitiveType?;

  /// Returns the value of the parameter as a dynamic type.
  String? get getParameter => (valueX as PrimitiveType?)?.valueString;
}
