import 'package:fhir_r4/fhir_r4.dart';

/// The status of a resource narrative.
enum NarrativeStatus {
  /// Display: Generated
  /// Definition: The contents of the narrative are entirely generated from the core elements in the content.
  generated('generated'),

  /// Display: Extensions
  /// Definition: The contents of the narrative are entirely generated from the core elements in the content and some of the content is generated from extensions. The narrative SHALL reflect the impact of all modifier extensions.
  extensions('extensions'),

  /// Display: Additional
  /// Definition: The contents of the narrative may contain additional information not found in the structured data. Note that there is no computable way to determine what the extra information is, other than by human inspection.
  additional('additional'),

  /// Display: Empty
  /// Definition: The contents of the narrative are some equivalent of "No human-readable text provided in this case".
  empty('empty'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const NarrativeStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static NarrativeStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NarrativeStatus.elementOnly.withElement(element);
    }
    return NarrativeStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  NarrativeStatus withElement(Element? newElement) {
    return NarrativeStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
