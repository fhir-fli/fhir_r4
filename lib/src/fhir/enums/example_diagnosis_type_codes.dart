// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes example Diagnosis Type codes.
class ExampleDiagnosisTypeCodes {
  // Private constructor for internal use (like enum)
  ExampleDiagnosisTypeCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ExampleDiagnosisTypeCodes values
  /// admitting
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes admitting =
      ExampleDiagnosisTypeCodes._(
    'admitting',
  );

  /// clinical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes clinical = ExampleDiagnosisTypeCodes._(
    'clinical',
  );

  /// differential
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes differential =
      ExampleDiagnosisTypeCodes._(
    'differential',
  );

  /// discharge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes discharge =
      ExampleDiagnosisTypeCodes._(
    'discharge',
  );

  /// laboratory
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes laboratory =
      ExampleDiagnosisTypeCodes._(
    'laboratory',
  );

  /// nursing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes nursing = ExampleDiagnosisTypeCodes._(
    'nursing',
  );

  /// prenatal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes prenatal = ExampleDiagnosisTypeCodes._(
    'prenatal',
  );

  /// principal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes principal =
      ExampleDiagnosisTypeCodes._(
    'principal',
  );

  /// radiology
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes radiology =
      ExampleDiagnosisTypeCodes._(
    'radiology',
  );

  /// remote
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes remote = ExampleDiagnosisTypeCodes._(
    'remote',
  );

  /// retrospective
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes retrospective =
      ExampleDiagnosisTypeCodes._(
    'retrospective',
  );

  /// self
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes self = ExampleDiagnosisTypeCodes._(
    'self',
  );

  /// For instances where an Element is present but not value

  static final ExampleDiagnosisTypeCodes elementOnly =
      ExampleDiagnosisTypeCodes._('');

  /// List of all enum-like values
  static final List<ExampleDiagnosisTypeCodes> values = [
    admitting,
    clinical,
    differential,
    discharge,
    laboratory,
    nursing,
    prenatal,
    principal,
    radiology,
    remote,
    retrospective,
    self,
  ];

  /// Returns the enum value with an element attached
  ExampleDiagnosisTypeCodes withElement(Element? newElement) {
    return ExampleDiagnosisTypeCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ExampleDiagnosisTypeCodes] from JSON.
  static ExampleDiagnosisTypeCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleDiagnosisTypeCodes.elementOnly.withElement(element);
    }
    return ExampleDiagnosisTypeCodes._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
