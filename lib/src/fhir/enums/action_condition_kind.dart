// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines the kinds of conditions that can appear on actions.
class ActionConditionKind {
  // Private constructor for internal use (like enum)
  ActionConditionKind._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ActionConditionKind values
  /// applicability
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionConditionKind applicability = ActionConditionKind._(
    'applicability',
  );

  /// start
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionConditionKind start = ActionConditionKind._(
    'start',
  );

  /// stop
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionConditionKind stop = ActionConditionKind._(
    'stop',
  );

  /// For instances where an Element is present but not value

  static final ActionConditionKind elementOnly = ActionConditionKind._('');

  /// List of all enum-like values
  static final List<ActionConditionKind> values = [
    applicability,
    start,
    stop,
  ];

  /// Returns the enum value with an element attached
  ActionConditionKind withElement(Element? newElement) {
    return ActionConditionKind._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ActionConditionKind] from JSON.
  static ActionConditionKind fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionConditionKind.elementOnly.withElement(element);
    }
    return ActionConditionKind._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
