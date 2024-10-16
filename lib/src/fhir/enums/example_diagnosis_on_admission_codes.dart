import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes example Diagnosis on Admission codes.
enum ExampleDiagnosisOnAdmissionCodes {
  /// Display: Yes
  /// Definition: Diagnosis was present at time of inpatient admission.
  y('y'),

  /// Display: No
  /// Definition: Diagnosis was not present at time of inpatient admission.
  n('n'),

  /// Display: Unknown
  /// Definition: Documentation insufficient to determine if condition was present at the time of inpatient admission.
  u('u'),

  /// Display: Undetermined
  /// Definition: Clinically undetermined. Provider unable to clinically determine whether the condition was present at the time of inpatient admission.
  w('w'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ExampleDiagnosisOnAdmissionCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ExampleDiagnosisOnAdmissionCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleDiagnosisOnAdmissionCodes.elementOnly.withElement(element);
    }
    return ExampleDiagnosisOnAdmissionCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ExampleDiagnosisOnAdmissionCodes withElement(Element? newElement) {
    return ExampleDiagnosisOnAdmissionCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
