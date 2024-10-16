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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AdverseEventSeriousness(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AdverseEventSeriousness fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventSeriousness.elementOnly.withElement(element);
    }
    return AdverseEventSeriousness.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AdverseEventSeriousness withElement(Element? newElement) {
    return AdverseEventSeriousness.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
