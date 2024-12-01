// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes example Diagnosis on Admission codes.
class ExampleDiagnosisOnAdmissionCodes {
  // Private constructor for internal use (like enum)
  ExampleDiagnosisOnAdmissionCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [ExampleDiagnosisOnAdmissionCodes] from JSON.
  factory ExampleDiagnosisOnAdmissionCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleDiagnosisOnAdmissionCodes.elementOnly.withElement(element);
    }
    return ExampleDiagnosisOnAdmissionCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ExampleDiagnosisOnAdmissionCodes values
  /// y
  static final ExampleDiagnosisOnAdmissionCodes y =
      ExampleDiagnosisOnAdmissionCodes._(
    'y',
  );

  /// n
  static final ExampleDiagnosisOnAdmissionCodes n =
      ExampleDiagnosisOnAdmissionCodes._(
    'n',
  );

  /// u
  static final ExampleDiagnosisOnAdmissionCodes u =
      ExampleDiagnosisOnAdmissionCodes._(
    'u',
  );

  /// w
  static final ExampleDiagnosisOnAdmissionCodes w =
      ExampleDiagnosisOnAdmissionCodes._(
    'w',
  );

  /// For instances where an Element is present but not value

  static final ExampleDiagnosisOnAdmissionCodes elementOnly =
      ExampleDiagnosisOnAdmissionCodes._('');

  /// List of all enum-like values
  static final List<ExampleDiagnosisOnAdmissionCodes> values = [
    y,
    n,
    u,
    w,
  ];

  /// Returns the enum value with an element attached
  ExampleDiagnosisOnAdmissionCodes withElement(Element? newElement) {
    return ExampleDiagnosisOnAdmissionCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
