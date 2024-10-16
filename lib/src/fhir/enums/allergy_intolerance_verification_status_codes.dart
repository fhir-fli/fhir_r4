import 'package:fhir_r4/fhir_r4.dart';

/// Preferred value set for AllergyIntolerance Verification Status.
enum AllergyIntoleranceVerificationStatusCodes {
  /// Display: Unconfirmed
  /// Definition: A low level of certainty about the propensity for a reaction to the identified substance.
  unconfirmed('unconfirmed'),

  /// Display: Confirmed
  /// Definition: A high level of certainty about the propensity for a reaction to the identified substance, which may include clinical evidence by testing or rechallenge.
  confirmed('confirmed'),

  /// Display: Refuted
  /// Definition: A propensity for a reaction to the identified substance has been disputed or disproven with a sufficient level of clinical certainty to justify invalidating the assertion. This might or might not include testing or rechallenge.
  refuted('refuted'),

  /// Display: Entered in Error
  /// Definition: The statement was entered in error and is not valid.
  entered_in_error('entered-in-error'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AllergyIntoleranceVerificationStatusCodes(this.fhirCode,
      [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AllergyIntoleranceVerificationStatusCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceVerificationStatusCodes.elementOnly
          .withElement(element);
    }
    return AllergyIntoleranceVerificationStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AllergyIntoleranceVerificationStatusCodes withElement(Element? newElement) {
    return AllergyIntoleranceVerificationStatusCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
