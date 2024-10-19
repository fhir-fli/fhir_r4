// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Defines expectations around whether an action or action group is required.
@Entity()
class ActionRequiredBehavior extends FhirCode {
  /// Factory constructor to create [ActionRequiredBehavior] from JSON.
  factory ActionRequiredBehavior.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionRequiredBehavior.elementOnly(element);
    }
    if (values.contains(value)) {
      return ActionRequiredBehavior._(value, element);
    }
    throw ArgumentError(
      'ActionRequiredBehavior.fromJson: JSON value is not a valid value',
    );
  }

  /// must
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionRequiredBehavior.must([this.element])
      : dbValue = 'must',
        super('must', element);

  /// could
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionRequiredBehavior.could([this.element])
      : dbValue = 'could',
        super('could', element);

  /// must_unless_documented
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionRequiredBehavior.must_unless_documented([this.element])
      : dbValue = 'must-unless-documented',
        super('must-unless-documented', element);

  /// For instances where an Element is present but not value

  ActionRequiredBehavior.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ActionRequiredBehavior._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'must',
    'could',
    'must-unless-documented',
  ];

  /// Returns the enum value with an element attached
  ActionRequiredBehavior withElement(Element? newElement) {
    return ActionRequiredBehavior._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ActionRequiredBehavior.$value';
}
