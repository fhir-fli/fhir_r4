// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The use of a human name.
class NameUse {
  // Private constructor for internal use (like enum)
  NameUse._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// NameUse values
  /// usual
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NameUse usual = NameUse._(
    'usual',
  );

  /// official
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NameUse official = NameUse._(
    'official',
  );

  /// temp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NameUse temp = NameUse._(
    'temp',
  );

  /// nickname
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NameUse nickname = NameUse._(
    'nickname',
  );

  /// anonymous
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NameUse anonymous = NameUse._(
    'anonymous',
  );

  /// old
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NameUse old = NameUse._(
    'old',
  );

  /// maiden
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NameUse maiden = NameUse._(
    'maiden',
  );

  /// For instances where an Element is present but not value

  static final NameUse elementOnly = NameUse._('');

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
    return NameUse._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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
