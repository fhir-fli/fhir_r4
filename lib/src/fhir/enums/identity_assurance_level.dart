// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The level of confidence that this link represents the same actual person, based on NIST Authentication Levels.
class IdentityAssuranceLevel {
  // Private constructor for internal use (like enum)
  IdentityAssuranceLevel._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// IdentityAssuranceLevel values
  /// level1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentityAssuranceLevel level1 = IdentityAssuranceLevel._(
    'level1',
  );

  /// level2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentityAssuranceLevel level2 = IdentityAssuranceLevel._(
    'level2',
  );

  /// level3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentityAssuranceLevel level3 = IdentityAssuranceLevel._(
    'level3',
  );

  /// level4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentityAssuranceLevel level4 = IdentityAssuranceLevel._(
    'level4',
  );

  /// For instances where an Element is present but not value

  static final IdentityAssuranceLevel elementOnly =
      IdentityAssuranceLevel._('');

  /// List of all enum-like values
  static final List<IdentityAssuranceLevel> values = [
    level1,
    level2,
    level3,
    level4,
  ];

  /// Returns the enum value with an element attached
  IdentityAssuranceLevel withElement(Element? newElement) {
    return IdentityAssuranceLevel._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [IdentityAssuranceLevel] from JSON.
  static IdentityAssuranceLevel fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentityAssuranceLevel.elementOnly.withElement(element);
    }
    return IdentityAssuranceLevel._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
