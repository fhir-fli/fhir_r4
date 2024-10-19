// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes example Diagnosis on Admission codes.
class ExampleDiagnosisOnAdmissionCodes {
  // Private constructor for internal use (like enum)
  ExampleDiagnosisOnAdmissionCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ExampleDiagnosisOnAdmissionCodes values
  /// y
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisOnAdmissionCodes y =
      ExampleDiagnosisOnAdmissionCodes._(
    'y',
  );

  /// n
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisOnAdmissionCodes n =
      ExampleDiagnosisOnAdmissionCodes._(
    'n',
  );

  /// u
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisOnAdmissionCodes u =
      ExampleDiagnosisOnAdmissionCodes._(
    'u',
  );

  /// w
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
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

  /// Factory constructor to create [ExampleDiagnosisOnAdmissionCodes] from JSON.
  static ExampleDiagnosisOnAdmissionCodes fromJson(Map<String, dynamic> json) {
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleDiagnosisOnAdmissionCodes.$fhirCode';
}
