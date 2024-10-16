import 'package:fhir_r4/fhir_r4.dart';

/// Type for orientation.
enum OrientationType {
  /// Display: Sense orientation of referenceSeq
  /// Definition: Sense orientation of reference sequence.
  sense('sense'),

  /// Display: Antisense orientation of referenceSeq
  /// Definition: Antisense orientation of reference sequence.
  antisense('antisense'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const OrientationType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static OrientationType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OrientationType.elementOnly.withElement(element);
    }
    return OrientationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  OrientationType withElement(Element? newElement) {
    return OrientationType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
