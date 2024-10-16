import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the source of the data when the report of the immunization event is not based on information from the person, entity or organization who administered the vaccine. This value set is provided as a suggestive example.
enum ImmunizationOriginCodes {
  /// Display: Other Provider
  /// Definition: The data for the immunization event originated with another provider.
  provider('provider'),

  /// Display: Written Record
  /// Definition: The data for the immunization event originated with a written record for the patient.
  record('record'),

  /// Display: Parent/Guardian/Patient Recall
  /// Definition: The data for the immunization event originated from the recollection of the patient or parent/guardian of the patient.
  recall('recall'),

  /// Display: School Record
  /// Definition: The data for the immunization event originated with a school record for the patient.
  school('school'),

  /// Display: Jurisdictional IIS
  /// Definition: The data for the immunization event originated with an immunization information system (IIS) or registry operating within the jurisdiction.
  jurisdiction('jurisdiction'),

  /// Display: Other Provider
  /// Definition:
  provider_1('provider'),

  /// Display: Written Record
  /// Definition:
  record_1('record'),

  /// Display: Parent/Guardian/Patient Recall
  /// Definition:
  recall_1('recall'),

  /// Display: School Record
  /// Definition:
  school_1('school'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ImmunizationOriginCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ImmunizationOriginCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationOriginCodes.elementOnly.withElement(element);
    }
    return ImmunizationOriginCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ImmunizationOriginCodes withElement(Element? newElement) {
    return ImmunizationOriginCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
