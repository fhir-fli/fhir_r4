// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to where the patient left the hospital.
enum DischargeDisposition {
  /// Display: Home
  /// Definition: The patient was dicharged and has indicated that they are going to return home afterwards.
  home('home'),

  /// Display: Alternative home
  /// Definition: The patient was discharged and has indicated that they are going to return home afterwards, but not the patient's home - e.g. a family member's home.
  alt_home('alt-home'),

  /// Display: Other healthcare facility
  /// Definition: The patient was transferred to another healthcare facility.
  other_hcf('other-hcf'),

  /// Display: Hospice
  /// Definition: The patient has been discharged into palliative care.
  hosp('hosp'),

  /// Display: Long-term care
  /// Definition: The patient has been discharged into long-term care where is likely to be monitored through an ongoing episode-of-care.
  long('long'),

  /// Display: Left against advice
  /// Definition: The patient self discharged against medical advice.
  aadvice('aadvice'),

  /// Display: Expired
  /// Definition: The patient has deceased during this encounter.
  exp('exp'),

  /// Display: Psychiatric hospital
  /// Definition: The patient has been transferred to a psychiatric facility.
  psy('psy'),

  /// Display: Rehabilitation
  /// Definition: The patient was discharged and is to receive post acute care rehabilitation services.
  rehab('rehab'),

  /// Display: Skilled nursing facility
  /// Definition: The patient has been discharged to a skilled nursing facility for the patient to receive additional care.
  snf('snf'),

  /// Display: Other
  /// Definition: The discharge disposition has not otherwise defined.
  oth('oth'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const DischargeDisposition(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [DischargeDisposition] instances.
  static DischargeDisposition fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DischargeDisposition.elementOnly.withElement(element);
    }
    return DischargeDisposition.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  DischargeDisposition withElement(Element? newElement) {
    return DischargeDisposition.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
