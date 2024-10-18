// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ExampleDiagnosisOnAdmissionCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ExampleDiagnosisOnAdmissionCodes] instances.
  static ExampleDiagnosisOnAdmissionCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleDiagnosisOnAdmissionCodes.elementOnly.withElement(element);
    }
    return ExampleDiagnosisOnAdmissionCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ExampleDiagnosisOnAdmissionCodes withElement(Element? newElement) {
    return ExampleDiagnosisOnAdmissionCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
