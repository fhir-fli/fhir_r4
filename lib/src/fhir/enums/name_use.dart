// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The use of a human name.
@collection
class NameUse {
  /// Constructor for internal use (like enum)
  NameUse({this.fhirCode, this.element})
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

  /// NameUse values
  /// usual
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NameUse usual = NameUse(
    fhirCode: 'usual',
  );

  /// official
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NameUse official = NameUse(
    fhirCode: 'official',
  );

  /// temp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NameUse temp = NameUse(
    fhirCode: 'temp',
  );

  /// nickname
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NameUse nickname = NameUse(
    fhirCode: 'nickname',
  );

  /// anonymous
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NameUse anonymous = NameUse(
    fhirCode: 'anonymous',
  );

  /// old
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NameUse old = NameUse(
    fhirCode: 'old',
  );

  /// maiden
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NameUse maiden = NameUse(
    fhirCode: 'maiden',
  );

  /// For instances where an Element is present but not value

  static final NameUse elementOnly = NameUse();

  /// List of all enum-like values
  static final List<NameUse> values = [
    usual,
    official,
    temp,
    nickname,
    anonymous,
    old,
    maiden,
  ];

  /// Returns the enum value with an element attached
  NameUse withElement(Element? newElement) {
    return NameUse(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [NameUse] from JSON.
  static NameUse fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NameUse.elementOnly.withElement(element);
    }
    return NameUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'NameUse.$fhirCode';
}
