// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes sample Revenue Center codes.
@collection
class ExampleRevenueCenterCodes {
  /// Constructor for internal use (like enum)
  ExampleRevenueCenterCodes({this.fhirCode, this.element})
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

  /// ExampleRevenueCenterCodes values
  /// value0370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleRevenueCenterCodes value0370 = ExampleRevenueCenterCodes(
    fhirCode: '0370',
  );

  /// value0420
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleRevenueCenterCodes value0420 = ExampleRevenueCenterCodes(
    fhirCode: '0420',
  );

  /// value0421
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleRevenueCenterCodes value0421 = ExampleRevenueCenterCodes(
    fhirCode: '0421',
  );

  /// value0440
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleRevenueCenterCodes value0440 = ExampleRevenueCenterCodes(
    fhirCode: '0440',
  );

  /// value0441
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleRevenueCenterCodes value0441 = ExampleRevenueCenterCodes(
    fhirCode: '0441',
  );

  /// value0450
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleRevenueCenterCodes value0450 = ExampleRevenueCenterCodes(
    fhirCode: '0450',
  );

  /// value0451
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleRevenueCenterCodes value0451 = ExampleRevenueCenterCodes(
    fhirCode: '0451',
  );

  /// value0452
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleRevenueCenterCodes value0452 = ExampleRevenueCenterCodes(
    fhirCode: '0452',
  );

  /// value0010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleRevenueCenterCodes value0010 = ExampleRevenueCenterCodes(
    fhirCode: '0010',
  );

  /// For instances where an Element is present but not value

  static final ExampleRevenueCenterCodes elementOnly =
      ExampleRevenueCenterCodes();

  /// List of all enum-like values
  static final List<ExampleRevenueCenterCodes> values = [
    value0370,
    value0420,
    value0421,
    value0440,
    value0441,
    value0450,
    value0451,
    value0452,
    value0010,
  ];

  /// Returns the enum value with an element attached
  ExampleRevenueCenterCodes withElement(Element? newElement) {
    return ExampleRevenueCenterCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ExampleRevenueCenterCodes] from JSON.
  static ExampleRevenueCenterCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleRevenueCenterCodes.elementOnly.withElement(element);
    }
    return ExampleRevenueCenterCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleRevenueCenterCodes.$fhirCode';
}
