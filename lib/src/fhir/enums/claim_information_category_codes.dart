// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Information Category codes.
enum ClaimInformationCategoryCodes {
  /// Display: Information
  /// Definition: Codes conveying additional situation and condition information.
  info('info'),

  /// Display: Discharge
  /// Definition: Discharge status and discharge to locations.
  discharge('discharge'),

  /// Display: Onset
  /// Definition: Period, start or end dates of aspects of the Condition.
  onset('onset'),

  /// Display: Related Services
  /// Definition: Nature and date of the related event e.g. Last exam, service, X-ray etc.
  related('related'),

  /// Display: Exception
  /// Definition: Insurance policy exceptions.
  exception('exception'),

  /// Display: Materials Forwarded
  /// Definition: Materials being forwarded, e.g. Models, molds, images, documents.
  material('material'),

  /// Display: Attachment
  /// Definition: Materials attached such as images, documents and resources.
  attachment('attachment'),

  /// Display: Missing Tooth
  /// Definition: Teeth which are missing for any reason, for example: prior extraction, never developed.
  missingtooth('missingtooth'),

  /// Display: Prosthesis
  /// Definition: The type of prosthesis and date of supply if a previously supplied prosthesis.
  prosthesis('prosthesis'),

  /// Display: Other
  /// Definition: Other information identified by the type.system.
  other('other'),

  /// Display: Hospitalized
  /// Definition: An indication that the patient was hospitalized, the period if known otherwise a Yes/No (boolean).
  hospitalized('hospitalized'),

  /// Display: EmploymentImpacted
  /// Definition: An indication that the patient was unable to work, the period if known otherwise a Yes/No (boolean).
  employmentimpacted('employmentimpacted'),

  /// Display: External Caause
  /// Definition: The external cause of an illness or injury.
  externalcause('externalcause'),

  /// Display: Patient Reason for Visit
  /// Definition: The reason for the patient visit.
  patientreasonforvisit('patientreasonforvisit'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ClaimInformationCategoryCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ClaimInformationCategoryCodes] instances.
  static ClaimInformationCategoryCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClaimInformationCategoryCodes.elementOnly.withElement(
        element,
      );
    }
    return ClaimInformationCategoryCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ClaimInformationCategoryCodes withElement(Element? newElement) {
    return ClaimInformationCategoryCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
