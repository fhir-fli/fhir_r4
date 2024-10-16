import 'package:fhir_r4/fhir_r4.dart';

/// How the referenced structure is used in this mapping.
enum StructureMapModelMode {
  /// Display: Source Structure Definition
  /// Definition: This structure describes an instance passed to the mapping engine that is used a source of data.
  source('source'),

  /// Display: Queried Structure Definition
  /// Definition: This structure describes an instance that the mapping engine may ask for that is used a source of data.
  queried('queried'),

  /// Display: Target Structure Definition
  /// Definition: This structure describes an instance passed to the mapping engine that is used a target of data.
  target('target'),

  /// Display: Produced Structure Definition
  /// Definition: This structure describes an instance that the mapping engine may ask to create that is used a target of data.
  produced('produced'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const StructureMapModelMode(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static StructureMapModelMode fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapModelMode.elementOnly.withElement(element);
    }
    return StructureMapModelMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  StructureMapModelMode withElement(Element? newElement) {
    return StructureMapModelMode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
