// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Overall seriousness of this event for the patient.
enum AdverseEventSeriousness {
  /// Display: Non-serious
  /// Definition: Non-serious.
  Non_serious('Non-serious'),

  /// Display: Serious
  /// Definition: Serious.
  Serious('Serious'),

  /// Display: Results in death
  /// Definition: Results in death.
  SeriousResultsInDeath('SeriousResultsInDeath'),

  /// Display: Is Life-threatening
  /// Definition: Is Life-threatening.
  SeriousIsLifeThreatening('SeriousIsLifeThreatening'),

  /// Display: Requires or prolongs inpatient hospitalization
  /// Definition: Requires inpatient hospitalization or causes prolongation of existing hospitalization.
  SeriousResultsInHospitalization('SeriousResultsInHospitalization'),

  /// Display: Results in persistent or significant disability/incapacity
  /// Definition: Results in persistent or significant disability/incapacity.
  SeriousResultsInDisability('SeriousResultsInDisability'),

  /// Display: Is a congenital anomaly/birth defect
  /// Definition: Is a congenital anomaly/birth defect.
  SeriousIsBirthDefect('SeriousIsBirthDefect'),

  /// Display: Requires intervention to prevent permanent impairment
  /// Definition: Requires intervention to prevent permanent impairment or damage (i.e., an important medical event that requires medical judgement).
  SeriousRequiresPreventImpairment('SeriousRequiresPreventImpairment'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AdverseEventSeriousness(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AdverseEventSeriousness] instances.
  static AdverseEventSeriousness fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventSeriousness.elementOnly.withElement(element);
    }
    return AdverseEventSeriousness.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AdverseEventSeriousness withElement(Element? newElement) {
    return AdverseEventSeriousness.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
