import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to express the usage type of an EpisodeOfCare record.
enum EpisodeOfCareType {
  /// Display: Home and Community Care
  /// Definition:
  hacc('hacc'),

  /// Display: Post Acute Care
  /// Definition:
  pac('pac'),

  /// Display: Post coordinated diabetes program
  /// Definition:
  diab('diab'),

  /// Display: Drug and alcohol rehabilitation
  /// Definition:
  da('da'),

  /// Display: Community-based aged care
  /// Definition:
  cacp('cacp'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const EpisodeOfCareType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static EpisodeOfCareType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EpisodeOfCareType.elementOnly.withElement(element);
    }
    return EpisodeOfCareType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  EpisodeOfCareType withElement(Element? newElement) {
    return EpisodeOfCareType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
