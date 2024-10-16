import 'package:fhir_r4/fhir_r4.dart';

/// Degree of preference of a type of conditioned specimen.
enum SpecimenContainedPreference {
  /// Display: Preferred
  /// Definition: This type of contained specimen is preferred to collect this kind of specimen.
  preferred('preferred'),

  /// Display: Alternate
  /// Definition: This type of conditioned specimen is an alternate.
  alternate('alternate'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SpecimenContainedPreference(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SpecimenContainedPreference fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecimenContainedPreference.elementOnly.withElement(element);
    }
    return SpecimenContainedPreference.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SpecimenContainedPreference withElement(Element? newElement) {
    return SpecimenContainedPreference.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
