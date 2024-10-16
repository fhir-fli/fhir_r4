import 'package:fhir_r4/fhir_r4.dart';

/// Preferred value set for AllergyIntolerance Clinical Status.
enum AllergyIntoleranceClinicalStatusCodes {
  /// Display: Active
  /// Definition: The subject is currently experiencing, or is at risk of, a reaction to the identified substance.
  active('active'),

  /// Display: Inactive
  /// Definition: The subject is no longer at risk of a reaction to the identified substance.
  inactive('inactive'),

  /// Display: Resolved
  /// Definition: A reaction to the identified substance has been clinically reassessed by testing or re-exposure and is considered no longer to be present. Re-exposure could be accidental, unplanned, or outside of any clinical setting.
  resolved('resolved'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AllergyIntoleranceClinicalStatusCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AllergyIntoleranceClinicalStatusCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceClinicalStatusCodes.elementOnly
          .withElement(element);
    }
    return AllergyIntoleranceClinicalStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AllergyIntoleranceClinicalStatusCodes withElement(Element? newElement) {
    return AllergyIntoleranceClinicalStatusCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
