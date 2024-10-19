// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The level of confidence that this link represents the same actual person, based on NIST Authentication Levels.
@Entity()
class IdentityAssuranceLevel extends FhirCode {
  /// Factory constructor to create [IdentityAssuranceLevel] from JSON.
  factory IdentityAssuranceLevel.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentityAssuranceLevel.elementOnly(element);
    }
    if (values.contains(value)) {
      return IdentityAssuranceLevel._(value, element);
    }
    throw ArgumentError(
      'IdentityAssuranceLevel.fromJson: JSON value is not a valid value',
    );
  }

  /// level1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentityAssuranceLevel.level1([this.element])
      : dbValue = 'level1',
        super('level1', element);

  /// level2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentityAssuranceLevel.level2([this.element])
      : dbValue = 'level2',
        super('level2', element);

  /// level3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentityAssuranceLevel.level3([this.element])
      : dbValue = 'level3',
        super('level3', element);

  /// level4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentityAssuranceLevel.level4([this.element])
      : dbValue = 'level4',
        super('level4', element);

  /// For instances where an Element is present but not value

  IdentityAssuranceLevel.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  IdentityAssuranceLevel._(super.input, [super.element])
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
    'level1',
    'level2',
    'level3',
    'level4',
  ];

  /// Returns the enum value with an element attached
  IdentityAssuranceLevel withElement(Element? newElement) {
    return IdentityAssuranceLevel._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'IdentityAssuranceLevel.$value';
}
