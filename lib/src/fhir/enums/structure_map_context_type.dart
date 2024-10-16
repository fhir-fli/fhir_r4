import 'package:fhir_r4/fhir_r4.dart';

/// How to interpret the context.
enum StructureMapContextType {
  /// Display: Type
  /// Definition: The context specifies a type.
  type('type'),

  /// Display: Variable
  /// Definition: The context specifies a variable.
  variable('variable'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const StructureMapContextType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static StructureMapContextType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapContextType.elementOnly.withElement(element);
    }
    return StructureMapContextType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  StructureMapContextType withElement(Element? newElement) {
    return StructureMapContextType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
