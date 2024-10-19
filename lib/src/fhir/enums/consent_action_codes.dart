// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes sample Consent Action codes.
@collection
class ConsentActionCodes {
  /// Constructor for internal use (like enum)
  ConsentActionCodes({this.fhirCode, this.element})
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

  /// ConsentActionCodes values
  /// collect
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentActionCodes collect = ConsentActionCodes(
    fhirCode: 'collect',
  );

  /// access
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentActionCodes access = ConsentActionCodes(
    fhirCode: 'access',
  );

  /// use
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentActionCodes use = ConsentActionCodes(
    fhirCode: 'use',
  );

  /// disclose
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentActionCodes disclose = ConsentActionCodes(
    fhirCode: 'disclose',
  );

  /// correct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentActionCodes correct = ConsentActionCodes(
    fhirCode: 'correct',
  );

  /// For instances where an Element is present but not value

  static final ConsentActionCodes elementOnly = ConsentActionCodes();

  /// List of all enum-like values
  static final List<ConsentActionCodes> values = [
    collect,
    access,
    use,
    disclose,
    correct,
  ];

  /// Returns the enum value with an element attached
  ConsentActionCodes withElement(Element? newElement) {
    return ConsentActionCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ConsentActionCodes] from JSON.
  static ConsentActionCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentActionCodes.elementOnly.withElement(element);
    }
    return ConsentActionCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConsentActionCodes.$fhirCode';
}
