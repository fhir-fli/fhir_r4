// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Defines selection frequency behavior for an action or group.
@Entity()
class ActionPrecheckBehavior extends FhirCode {
  /// Factory constructor to create [ActionPrecheckBehavior] from JSON.
  factory ActionPrecheckBehavior.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionPrecheckBehavior.elementOnly(element);
    }
    if (values.contains(value)) {
      return ActionPrecheckBehavior._(value, element);
    }
    throw ArgumentError(
      'ActionPrecheckBehavior.fromJson: JSON value is not a valid value',
    );
  }

  /// yes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionPrecheckBehavior.yes([this.element])
      : dbValue = 'yes',
        super('yes', element);

  /// no
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionPrecheckBehavior.no([this.element])
      : dbValue = 'no',
        super('no', element);

  /// For instances where an Element is present but not value

  ActionPrecheckBehavior.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ActionPrecheckBehavior._(super.input, [super.element])
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
    'yes',
    'no',
  ];

  /// Returns the enum value with an element attached
  ActionPrecheckBehavior withElement(Element? newElement) {
    return ActionPrecheckBehavior._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ActionPrecheckBehavior.$value';
}
