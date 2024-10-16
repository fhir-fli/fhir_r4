import 'package:fhir_r4/fhir_r4.dart';

/// Mode for this instance of data.
enum StructureMapInputMode {
  /// Display: Source Instance
  /// Definition: Names an input instance used a source for mapping.
  source('source'),

  /// Display: Target Instance
  /// Definition: Names an instance that is being populated.
  target('target'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const StructureMapInputMode(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static StructureMapInputMode fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapInputMode.elementOnly.withElement(element);
    }
    return StructureMapInputMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  StructureMapInputMode withElement(Element? newElement) {
    return StructureMapInputMode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
