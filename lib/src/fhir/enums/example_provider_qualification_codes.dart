import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Provider Qualification codes.
enum ExampleProviderQualificationCodes {
  /// Display: Dentist
  /// Definition: Dentist General Practitioner (DDS, DDM).
  value311405('311405'),

  /// Display: Ophthalmologist
  /// Definition: Ophthalmologist.
  value604215('604215'),

  /// Display: Optometrist
  /// Definition: Optometrist.
  value604210('604210'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ExampleProviderQualificationCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ExampleProviderQualificationCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleProviderQualificationCodes.elementOnly.withElement(element);
    }
    return ExampleProviderQualificationCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ExampleProviderQualificationCodes withElement(Element? newElement) {
    return ExampleProviderQualificationCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
