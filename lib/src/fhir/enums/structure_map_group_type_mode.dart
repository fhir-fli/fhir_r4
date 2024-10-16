import 'package:fhir_r4/fhir_r4.dart';

/// If this is the default rule set to apply for the source type, or this combination of types.
enum StructureMapGroupTypeMode {
  /// Display: Not a Default
  /// Definition: This group is not a default group for the types.
  none('none'),

  /// Display: Default for Type Combination
  /// Definition: This group is a default mapping group for the specified types and for the primary source type.
  types('types'),

  /// Display: Default for type + combination
  /// Definition: This group is a default mapping group for the specified types.
  type_and_types('type-and-types'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const StructureMapGroupTypeMode(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static StructureMapGroupTypeMode fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapGroupTypeMode.elementOnly.withElement(element);
    }
    return StructureMapGroupTypeMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  StructureMapGroupTypeMode withElement(Element? newElement) {
    return StructureMapGroupTypeMode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
