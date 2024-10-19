// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Classification of relationship between a therapy and a contraindication or an indication.
class TherapyRelationshipType {
  // Private constructor for internal use (like enum)
  TherapyRelationshipType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TherapyRelationshipType values
  /// contraindicated_only_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TherapyRelationshipType contraindicated_only_with =
      TherapyRelationshipType._(
    'contraindicated-only-with',
  );

  /// contraindicated_except_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TherapyRelationshipType contraindicated_except_with =
      TherapyRelationshipType._(
    'contraindicated-except-with',
  );

  /// indicated_only_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TherapyRelationshipType indicated_only_with =
      TherapyRelationshipType._(
    'indicated-only-with',
  );

  /// indicated_except_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TherapyRelationshipType indicated_except_with =
      TherapyRelationshipType._(
    'indicated-except-with',
  );

  /// indicated_only_before
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TherapyRelationshipType indicated_only_before =
      TherapyRelationshipType._(
    'indicated-only-before',
  );

  /// replace_other_therapy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TherapyRelationshipType replace_other_therapy =
      TherapyRelationshipType._(
    'replace-other-therapy',
  );

  /// replace_other_therapy_contraindicated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TherapyRelationshipType replace_other_therapy_contraindicated =
      TherapyRelationshipType._(
    'replace-other-therapy-contraindicated',
  );

  /// replace_other_therapy_not_tolerated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TherapyRelationshipType replace_other_therapy_not_tolerated =
      TherapyRelationshipType._(
    'replace-other-therapy-not-tolerated',
  );

  /// replace_other_therapy_not_effective
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TherapyRelationshipType replace_other_therapy_not_effective =
      TherapyRelationshipType._(
    'replace-other-therapy-not-effective',
  );

  /// For instances where an Element is present but not value

  static final TherapyRelationshipType elementOnly =
      TherapyRelationshipType._('');

  /// List of all enum-like values
  static final List<TherapyRelationshipType> values = [
    contraindicated_only_with,
    contraindicated_except_with,
    indicated_only_with,
    indicated_except_with,
    indicated_only_before,
    replace_other_therapy,
    replace_other_therapy_contraindicated,
    replace_other_therapy_not_tolerated,
    replace_other_therapy_not_effective,
  ];

  /// Returns the enum value with an element attached
  TherapyRelationshipType withElement(Element? newElement) {
    return TherapyRelationshipType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [TherapyRelationshipType] from JSON.
  static TherapyRelationshipType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TherapyRelationshipType.elementOnly.withElement(element);
    }
    return TherapyRelationshipType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TherapyRelationshipType.$fhirCode';
}
