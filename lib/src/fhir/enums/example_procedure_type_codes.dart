import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes example Procedure Type codes.
enum ExampleProcedureTypeCodes {
  /// Display: Primary procedure
  /// Definition: The first procedure in a series required to produce and overall patient outcome.
  primary('primary'),

  /// Display: Secondary procedure
  /// Definition: The second procedure in a series required to produce and overall patient outcome.
  secondary('secondary'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ExampleProcedureTypeCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ExampleProcedureTypeCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleProcedureTypeCodes.elementOnly.withElement(element);
    }
    return ExampleProcedureTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ExampleProcedureTypeCodes withElement(Element? newElement) {
    return ExampleProcedureTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
