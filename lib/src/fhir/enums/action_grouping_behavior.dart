// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Defines organization behavior of a group.
@Entity()
class ActionGroupingBehavior extends FhirCode {
  /// Factory constructor to create [ActionGroupingBehavior] from JSON.
  factory ActionGroupingBehavior.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionGroupingBehavior.elementOnly(element);
    }
    if (values.contains(value)) {
      return ActionGroupingBehavior._(value, element);
    }
    throw ArgumentError(
      'ActionGroupingBehavior.fromJson: JSON value is not a valid value',
    );
  }

  /// visual_group
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionGroupingBehavior.visual_group([this.element])
      : dbValue = 'visual-group',
        super('visual-group', element);

  /// logical_group
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionGroupingBehavior.logical_group([this.element])
      : dbValue = 'logical-group',
        super('logical-group', element);

  /// sentence_group
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionGroupingBehavior.sentence_group([this.element])
      : dbValue = 'sentence-group',
        super('sentence-group', element);

  /// For instances where an Element is present but not value

  ActionGroupingBehavior.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ActionGroupingBehavior._(super.input, [super.element])
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
    'visual-group',
    'logical-group',
    'sentence-group',
  ];

  /// Returns the enum value with an element attached
  ActionGroupingBehavior withElement(Element? newElement) {
    return ActionGroupingBehavior._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ActionGroupingBehavior.$value';
}
