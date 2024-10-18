// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code that specifies a type of context being specified by a usage context.
enum UsageContextType {
  /// Display: Gender
  /// Definition: The gender of the patient. For this context type, appropriate values can be found in the http://hl7.org/fhir/ValueSet/administrative-gender value set.
  gender('gender'),

  /// Display: Age Range
  /// Definition: The age of the patient. For this context type, the value could be a range that specifies the applicable ages or a code from an appropriate value set such as the MeSH value set http://terminology.hl7.org/ValueSet/v3-AgeGroupObservationValue.
  age('age'),

  /// Display: Clinical Focus
  /// Definition: The clinical concept(s) addressed by the artifact. For example, disease, diagnostic test interpretation, medication ordering as in http://hl7.org/fhir/ValueSet/condition-code.
  focus('focus'),

  /// Display: User Type
  /// Definition: The clinical specialty of the context in which the patient is being treated - For example, PCP, Patient, Cardiologist, Behavioral Professional, Oral Health Professional, Prescriber, etc... taken from a specialty value set such as the NUCC Health Care provider taxonomy value set http://hl7.org/fhir/ValueSet/provider-taxonomy.
  user('user'),

  /// Display: Workflow Setting
  /// Definition: The settings in which the artifact is intended for use. For example, admission, pre-op, etc. For example, the ActEncounterCode value set http://terminology.hl7.org/ValueSet/v3-ActEncounterCode.
  workflow('workflow'),

  /// Display: Workflow Task
  /// Definition: The context for the clinical task(s) represented by this artifact. For example, this could be any task context represented by the HL7 ActTaskCode value set http://terminology.hl7.org/ValueSet/v3-ActTaskCode. General categories include: order entry, patient documentation and patient information review.
  task('task'),

  /// Display: Clinical Venue
  /// Definition: The venue in which an artifact could be used. For example, Outpatient, Inpatient, Home, Nursing home. The code value may originate from the HL7 ServiceDeliveryLocationRoleType value set (http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType).
  venue('venue'),

  /// Display: Species
  /// Definition: The species to which an artifact applies. For example, SNOMED - 387961004 | Kingdom Animalia (organism).
  species('species'),

  /// Display: Program
  /// Definition: A program/project of work for which this artifact is applicable.
  program('program'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const UsageContextType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [UsageContextType] instances.
  static UsageContextType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UsageContextType.elementOnly.withElement(
        element,
      );
    }
    return UsageContextType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  UsageContextType withElement(Element? newElement) {
    return UsageContextType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
