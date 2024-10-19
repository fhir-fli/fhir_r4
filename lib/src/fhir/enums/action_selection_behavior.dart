// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Defines selection behavior of a group.
@Entity()
class ActionSelectionBehavior extends FhirCode {
  /// Factory constructor to create [ActionSelectionBehavior] from JSON.
  factory ActionSelectionBehavior.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionSelectionBehavior.elementOnly(element);
    }
    if (values.contains(value)) {
      return ActionSelectionBehavior._(value, element);
    }
    throw ArgumentError(
      'ActionSelectionBehavior.fromJson: JSON value is not a valid value',
    );
  }

  /// any
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionSelectionBehavior.any([this.element])
      : dbValue = 'any',
        super('any', element);

  /// all
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionSelectionBehavior.all([this.element])
      : dbValue = 'all',
        super('all', element);

  /// all_or_none
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionSelectionBehavior.all_or_none([this.element])
      : dbValue = 'all-or-none',
        super('all-or-none', element);

  /// exactly_one
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionSelectionBehavior.exactly_one([this.element])
      : dbValue = 'exactly-one',
        super('exactly-one', element);

  /// at_most_one
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionSelectionBehavior.at_most_one([this.element])
      : dbValue = 'at-most-one',
        super('at-most-one', element);

  /// one_or_more
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionSelectionBehavior.one_or_more([this.element])
      : dbValue = 'one-or-more',
        super('one-or-more', element);

  /// For instances where an Element is present but not value

  ActionSelectionBehavior.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ActionSelectionBehavior._(super.input, [super.element])
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
    'any',
    'all',
    'all-or-none',
    'exactly-one',
    'at-most-one',
    'one-or-more',
  ];

  /// Returns the enum value with an element attached
  ActionSelectionBehavior withElement(Element? newElement) {
    return ActionSelectionBehavior._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ActionSelectionBehavior.$value';
}
