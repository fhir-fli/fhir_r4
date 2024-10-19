// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Defines the types of relationships between actions.
@Entity()
class ActionRelationshipType extends FhirCode {
  /// Factory constructor to create [ActionRelationshipType] from JSON.
  factory ActionRelationshipType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionRelationshipType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ActionRelationshipType._(value, element);
    }
    throw ArgumentError(
      'ActionRelationshipType.fromJson: JSON value is not a valid value',
    );
  }

  /// before_start
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionRelationshipType.before_start([this.element])
      : dbValue = 'before-start',
        super('before-start', element);

  /// before
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionRelationshipType.before([this.element])
      : dbValue = 'before',
        super('before', element);

  /// before_end
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionRelationshipType.before_end([this.element])
      : dbValue = 'before-end',
        super('before-end', element);

  /// concurrent_with_start
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionRelationshipType.concurrent_with_start([this.element])
      : dbValue = 'concurrent-with-start',
        super('concurrent-with-start', element);

  /// concurrent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionRelationshipType.concurrent([this.element])
      : dbValue = 'concurrent',
        super('concurrent', element);

  /// concurrent_with_end
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionRelationshipType.concurrent_with_end([this.element])
      : dbValue = 'concurrent-with-end',
        super('concurrent-with-end', element);

  /// after_start
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionRelationshipType.after_start([this.element])
      : dbValue = 'after-start',
        super('after-start', element);

  /// after
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionRelationshipType.after([this.element])
      : dbValue = 'after',
        super('after', element);

  /// after_end
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionRelationshipType.after_end([this.element])
      : dbValue = 'after-end',
        super('after-end', element);

  /// For instances where an Element is present but not value

  ActionRelationshipType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ActionRelationshipType._(super.input, [super.element])
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
    'before-start',
    'before',
    'before-end',
    'concurrent-with-start',
    'concurrent',
    'concurrent-with-end',
    'after-start',
    'after',
    'after-end',
  ];

  /// Returns the enum value with an element attached
  ActionRelationshipType withElement(Element? newElement) {
    return ActionRelationshipType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ActionRelationshipType.$value';
}
