// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Example set of codes that can be used for billing purposes.
@collection
class ChargeItemCode {
  /// Constructor for internal use (like enum)
  ChargeItemCode({this.fhirCode, this.element})
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

  /// ChargeItemCode values
  /// value1100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChargeItemCode value1100 = ChargeItemCode(
    fhirCode: '1100',
  );

  /// value1210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChargeItemCode value1210 = ChargeItemCode(
    fhirCode: '1210',
  );

  /// value1320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ChargeItemCode value1320 = ChargeItemCode(
    fhirCode: '1320',
  );

  /// For instances where an Element is present but not value

  static final ChargeItemCode elementOnly = ChargeItemCode();

  /// List of all enum-like values
  static final List<ChargeItemCode> values = [
    value1100,
    value1210,
    value1320,
  ];

  /// Returns the enum value with an element attached
  ChargeItemCode withElement(Element? newElement) {
    return ChargeItemCode(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ChargeItemCode] from JSON.
  static ChargeItemCode fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ChargeItemCode.elementOnly.withElement(element);
    }
    return ChargeItemCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ChargeItemCode.$fhirCode';
}
