// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes example Diagnosis Type codes.
@collection
class ExampleDiagnosisTypeCodes {
  /// Constructor for internal use (like enum)
  ExampleDiagnosisTypeCodes({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ExampleDiagnosisTypeCodes values
  /// admitting
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes admitting = ExampleDiagnosisTypeCodes(
    fhirCode: 'admitting',
  );

  /// clinical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes clinical = ExampleDiagnosisTypeCodes(
    fhirCode: 'clinical',
  );

  /// differential
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes differential =
      ExampleDiagnosisTypeCodes(
    fhirCode: 'differential',
  );

  /// discharge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes discharge = ExampleDiagnosisTypeCodes(
    fhirCode: 'discharge',
  );

  /// laboratory
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes laboratory = ExampleDiagnosisTypeCodes(
    fhirCode: 'laboratory',
  );

  /// nursing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes nursing = ExampleDiagnosisTypeCodes(
    fhirCode: 'nursing',
  );

  /// prenatal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes prenatal = ExampleDiagnosisTypeCodes(
    fhirCode: 'prenatal',
  );

  /// principal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes principal = ExampleDiagnosisTypeCodes(
    fhirCode: 'principal',
  );

  /// radiology
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes radiology = ExampleDiagnosisTypeCodes(
    fhirCode: 'radiology',
  );

  /// remote
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes remote = ExampleDiagnosisTypeCodes(
    fhirCode: 'remote',
  );

  /// retrospective
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes retrospective =
      ExampleDiagnosisTypeCodes(
    fhirCode: 'retrospective',
  );

  /// self
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisTypeCodes self = ExampleDiagnosisTypeCodes(
    fhirCode: 'self',
  );

  /// For instances where an Element is present but not value

  static final ExampleDiagnosisTypeCodes elementOnly =
      ExampleDiagnosisTypeCodes();

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
    return ExampleDiagnosisTypeCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return ExampleDiagnosisTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleDiagnosisTypeCodes.$fhirCode';
}
