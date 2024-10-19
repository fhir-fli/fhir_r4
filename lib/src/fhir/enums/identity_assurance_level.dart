// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The level of confidence that this link represents the same actual person, based on NIST Authentication Levels.
@collection
class IdentityAssuranceLevel {
  /// Constructor for internal use (like enum)
  IdentityAssuranceLevel({this.fhirCode, this.element})
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

  /// IdentityAssuranceLevel values
  /// level1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentityAssuranceLevel level1 = IdentityAssuranceLevel(
    fhirCode: 'level1',
  );

  /// level2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentityAssuranceLevel level2 = IdentityAssuranceLevel(
    fhirCode: 'level2',
  );

  /// level3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentityAssuranceLevel level3 = IdentityAssuranceLevel(
    fhirCode: 'level3',
  );

  /// level4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentityAssuranceLevel level4 = IdentityAssuranceLevel(
    fhirCode: 'level4',
  );

  /// For instances where an Element is present but not value

  static final IdentityAssuranceLevel elementOnly = IdentityAssuranceLevel();

  /// List of all enum-like values
  static final List<IdentityAssuranceLevel> values = [
    level1,
    level2,
    level3,
    level4,
  ];

  /// Returns the enum value with an element attached
  IdentityAssuranceLevel withElement(Element? newElement) {
    return IdentityAssuranceLevel(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return IdentityAssuranceLevel.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'IdentityAssuranceLevel.$fhirCode';
}
