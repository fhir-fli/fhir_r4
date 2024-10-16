import 'package:fhir_r4/fhir_r4.dart';

/// Identification of the underlying physiological mechanism for a Reaction Risk.
enum AllergyIntoleranceType {
  /// Display: Allergy
  /// Definition: A propensity for hypersensitive reaction(s) to a substance. These reactions are most typically type I hypersensitivity, plus other "allergy-like" reactions, including pseudoallergy.
  allergy('allergy'),

  /// Display: Intolerance
  /// Definition: A propensity for adverse reactions to a substance that is not judged to be allergic or "allergy-like". These reactions are typically (but not necessarily) non-immune. They are to some degree idiosyncratic and/or patient-specific (i.e. are not a reaction that is expected to occur with most or all patients given similar circumstances).
  intolerance('intolerance'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AllergyIntoleranceType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AllergyIntoleranceType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceType.elementOnly.withElement(element);
    }
    return AllergyIntoleranceType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AllergyIntoleranceType withElement(Element? newElement) {
    return AllergyIntoleranceType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
