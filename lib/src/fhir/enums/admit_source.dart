// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to indicate from where the patient came in.
enum AdmitSource {
  /// Display: Transferred from other hospital
  /// Definition: The Patient has been transferred from another hospital for this encounter.
  hosp_trans('hosp-trans'),

  /// Display: From accident/emergency department
  /// Definition: The patient has been transferred from the emergency department within the hospital. This is typically used in the transition to an inpatient encounter
  emd('emd'),

  /// Display: From outpatient department
  /// Definition: The patient has been transferred from an outpatient department within the hospital.
  outp('outp'),

  /// Display: Born in hospital
  /// Definition: The patient is a newborn and the encounter will track the baby related activities (as opposed to the Mothers encounter - that may be associated using the newborn encounters partof property)
  born('born'),

  /// Display: General Practitioner referral
  /// Definition: The patient has been admitted due to a referred from a General Practitioner.
  gp('gp'),

  /// Display: Medical Practitioner/physician referral
  /// Definition: The patient has been admitted due to a referred from a Specialist (as opposed to a General Practitioner).
  mp('mp'),

  /// Display: From nursing home
  /// Definition: The patient has been transferred from a nursing home.
  nursing('nursing'),

  /// Display: From psychiatric hospital
  /// Definition: The patient has been transferred from a psychiatric facility.
  psych('psych'),

  /// Display: From rehabilitation facility
  /// Definition: The patient has been transferred from a rehabilitation facility or clinic.
  rehab('rehab'),

  /// Display: Other
  /// Definition: The patient has been admitted from a source otherwise not specified here.
  other('other'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AdmitSource(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AdmitSource] instances.
  static AdmitSource fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdmitSource.elementOnly.withElement(
        element,
      );
    }
    return AdmitSource.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AdmitSource withElement(Element? newElement) {
    return AdmitSource.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
