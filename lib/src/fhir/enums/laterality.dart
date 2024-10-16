import 'package:fhir_r4/fhir_r4.dart';

/// Laterality: SNOMED-CT concepts for 'left', 'right', and 'bilateral'
enum Laterality {
  /// Display: Unilateral left
  /// Definition:
  value419161000('419161000'),

  /// Display: Unilateral right
  /// Definition:
  value419465000('419465000'),

  /// Display: Bilateral
  /// Definition:
  value51440002('51440002'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const Laterality(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static Laterality fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Laterality.elementOnly.withElement(element);
    }
    return Laterality.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  Laterality withElement(Element? newElement) {
    return Laterality.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
