// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set defines the set of codes that can be used to indicate the marital status of a person.
@collection
class MaritalStatusCodes {
  /// Constructor for internal use (like enum)
  MaritalStatusCodes({this.fhirCode, this.element})
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

  /// MaritalStatusCodes values
  /// UNK
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MaritalStatusCodes UNK = MaritalStatusCodes(
    fhirCode: 'UNK',
  );

  /// For instances where an Element is present but not value

  static final MaritalStatusCodes elementOnly = MaritalStatusCodes();

  /// List of all enum-like values
  static final List<MaritalStatusCodes> values = [
    UNK,
  ];

  /// Returns the enum value with an element attached
  MaritalStatusCodes withElement(Element? newElement) {
    return MaritalStatusCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MaritalStatusCodes] from JSON.
  static MaritalStatusCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MaritalStatusCodes.elementOnly.withElement(element);
    }
    return MaritalStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MaritalStatusCodes.$fhirCode';
}
