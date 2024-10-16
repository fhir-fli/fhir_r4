import 'package:fhir_r4/fhir_r4.dart';

/// Codes providing the status/availability of a specimen.
enum SpecimenStatus {
  /// Display: Available
  /// Definition: The physical specimen is present and in good condition.
  available('available'),

  /// Display: Unavailable
  /// Definition: There is no physical specimen because it is either lost, destroyed or consumed.
  unavailable('unavailable'),

  /// Display: Unsatisfactory
  /// Definition: The specimen cannot be used because of a quality issue such as a broken container, contamination, or too old.
  unsatisfactory('unsatisfactory'),

  /// Display: Entered in Error
  /// Definition: The specimen was entered in error and therefore nullified.
  entered_in_error('entered-in-error'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SpecimenStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SpecimenStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecimenStatus.elementOnly.withElement(element);
    }
    return SpecimenStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SpecimenStatus withElement(Element? newElement) {
    return SpecimenStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
