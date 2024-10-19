// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Defines the kinds of conditions that can appear on actions.
@Entity()
class ActionConditionKind extends FhirCode {
  /// Factory constructor to create [ActionConditionKind] from JSON.
  factory ActionConditionKind.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionConditionKind.elementOnly(element);
    }
    if (values.contains(value)) {
      return ActionConditionKind._(value, element);
    }
    throw ArgumentError(
      'ActionConditionKind.fromJson: JSON value is not a valid value',
    );
  }

  /// applicability
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionConditionKind.applicability([this.element])
      : dbValue = 'applicability',
        super('applicability', element);

  /// start
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionConditionKind.start([this.element])
      : dbValue = 'start',
        super('start', element);

  /// stop
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionConditionKind.stop([this.element])
      : dbValue = 'stop',
        super('stop', element);

  /// For instances where an Element is present but not value

  ActionConditionKind.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ActionConditionKind._(super.input, [super.element])
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
    'applicability',
    'start',
    'stop',
  ];

  /// Returns the enum value with an element attached
  ActionConditionKind withElement(Element? newElement) {
    return ActionConditionKind._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ActionConditionKind.$value';
}
