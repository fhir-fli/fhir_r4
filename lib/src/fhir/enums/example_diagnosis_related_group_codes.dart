// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes example Diagnosis Related Group codes.
@collection
class ExampleDiagnosisRelatedGroupCodes {
  /// Constructor for internal use (like enum)
  ExampleDiagnosisRelatedGroupCodes({this.fhirCode, this.element})
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

  /// ExampleDiagnosisRelatedGroupCodes values
  /// value100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisRelatedGroupCodes value100 =
      ExampleDiagnosisRelatedGroupCodes(
    fhirCode: '100',
  );

  /// value101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisRelatedGroupCodes value101 =
      ExampleDiagnosisRelatedGroupCodes(
    fhirCode: '101',
  );

  /// value300
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisRelatedGroupCodes value300 =
      ExampleDiagnosisRelatedGroupCodes(
    fhirCode: '300',
  );

  /// value400
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleDiagnosisRelatedGroupCodes value400 =
      ExampleDiagnosisRelatedGroupCodes(
    fhirCode: '400',
  );

  /// For instances where an Element is present but not value

  static final ExampleDiagnosisRelatedGroupCodes elementOnly =
      ExampleDiagnosisRelatedGroupCodes();

  /// List of all enum-like values
  static final List<ExampleDiagnosisRelatedGroupCodes> values = [
    value100,
    value101,
    value300,
    value400,
  ];

  /// Returns the enum value with an element attached
  ExampleDiagnosisRelatedGroupCodes withElement(Element? newElement) {
    return ExampleDiagnosisRelatedGroupCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ExampleDiagnosisRelatedGroupCodes] from JSON.
  static ExampleDiagnosisRelatedGroupCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleDiagnosisRelatedGroupCodes.elementOnly.withElement(element);
    }
    return ExampleDiagnosisRelatedGroupCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleDiagnosisRelatedGroupCodes.$fhirCode';
}
