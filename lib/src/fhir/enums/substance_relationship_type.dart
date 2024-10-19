// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The relationship between two substance types.
@Entity()
class SubstanceRelationshipType extends FhirCode {
  /// Factory constructor to create [SubstanceRelationshipType] from JSON.
  factory SubstanceRelationshipType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceRelationshipType.elementOnly(element);
    }
    if (values.contains(value)) {
      return SubstanceRelationshipType._(value, element);
    }
    throw ArgumentError(
      'SubstanceRelationshipType.fromJson: JSON value is not a valid value',
    );
  }

  /// Salt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceRelationshipType.Salt([this.element])
      : dbValue = 'Salt',
        super('Salt', element);

  /// ActiveMoiety
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceRelationshipType.ActiveMoiety([this.element])
      : dbValue = 'ActiveMoiety',
        super('ActiveMoiety', element);

  /// StartingMaterial
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceRelationshipType.StartingMaterial([this.element])
      : dbValue = 'StartingMaterial',
        super('StartingMaterial', element);

  /// Polymorph
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceRelationshipType.Polymorph([this.element])
      : dbValue = 'Polymorph',
        super('Polymorph', element);

  /// Impurity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceRelationshipType.Impurity([this.element])
      : dbValue = 'Impurity',
        super('Impurity', element);

  /// For instances where an Element is present but not value

  SubstanceRelationshipType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SubstanceRelationshipType._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'Salt',
    'ActiveMoiety',
    'StartingMaterial',
    'Polymorph',
    'Impurity',
  ];

  /// Returns the enum value with an element attached
  SubstanceRelationshipType withElement(Element? newElement) {
    return SubstanceRelationshipType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SubstanceRelationshipType.$value';
}
