// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The relationship between two substance types.
class SubstanceRelationshipType {
  // Private constructor for internal use (like enum)
  SubstanceRelationshipType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SubstanceRelationshipType values
  /// Salt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceRelationshipType Salt = SubstanceRelationshipType._(
    'Salt',
  );

  /// ActiveMoiety
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceRelationshipType ActiveMoiety =
      SubstanceRelationshipType._(
    'ActiveMoiety',
  );

  /// StartingMaterial
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceRelationshipType StartingMaterial =
      SubstanceRelationshipType._(
    'StartingMaterial',
  );

  /// Polymorph
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceRelationshipType Polymorph =
      SubstanceRelationshipType._(
    'Polymorph',
  );

  /// Impurity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceRelationshipType Impurity = SubstanceRelationshipType._(
    'Impurity',
  );

  /// For instances where an Element is present but not value

  static final SubstanceRelationshipType elementOnly =
      SubstanceRelationshipType._('');

  /// List of all enum-like values
  static final List<SubstanceRelationshipType> values = [
    Salt,
    ActiveMoiety,
    StartingMaterial,
    Polymorph,
    Impurity,
  ];

  /// Returns the enum value with an element attached
  SubstanceRelationshipType withElement(Element? newElement) {
    return SubstanceRelationshipType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SubstanceRelationshipType] from JSON.
  static SubstanceRelationshipType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceRelationshipType.elementOnly.withElement(element);
    }
    return SubstanceRelationshipType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
