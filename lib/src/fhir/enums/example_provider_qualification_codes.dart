// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes sample Provider Qualification codes.
@collection
class ExampleProviderQualificationCodes {
  /// Constructor for internal use (like enum)
  ExampleProviderQualificationCodes({this.fhirCode, this.element})
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

  /// ExampleProviderQualificationCodes values
  /// value311405
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleProviderQualificationCodes value311405 =
      ExampleProviderQualificationCodes(
    fhirCode: '311405',
  );

  /// value604215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleProviderQualificationCodes value604215 =
      ExampleProviderQualificationCodes(
    fhirCode: '604215',
  );

  /// value604210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleProviderQualificationCodes value604210 =
      ExampleProviderQualificationCodes(
    fhirCode: '604210',
  );

  /// For instances where an Element is present but not value

  static final ExampleProviderQualificationCodes elementOnly =
      ExampleProviderQualificationCodes();

  /// List of all enum-like values
  static final List<ExampleProviderQualificationCodes> values = [
    value311405,
    value604215,
    value604210,
  ];

  /// Returns the enum value with an element attached
  ExampleProviderQualificationCodes withElement(Element? newElement) {
    return ExampleProviderQualificationCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ExampleProviderQualificationCodes] from JSON.
  static ExampleProviderQualificationCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleProviderQualificationCodes.elementOnly.withElement(element);
    }
    return ExampleProviderQualificationCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleProviderQualificationCodes.$fhirCode';
}
