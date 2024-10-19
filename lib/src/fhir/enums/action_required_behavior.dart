// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines expectations around whether an action or action group is required.
class ActionRequiredBehavior {
  // Private constructor for internal use (like enum)
  ActionRequiredBehavior._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ActionRequiredBehavior values
  /// must
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionRequiredBehavior must = ActionRequiredBehavior._(
    'must',
  );

  /// could
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionRequiredBehavior could = ActionRequiredBehavior._(
    'could',
  );

  /// must_unless_documented
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionRequiredBehavior must_unless_documented =
      ActionRequiredBehavior._(
    'must-unless-documented',
  );

  /// For instances where an Element is present but not value

  static final ActionRequiredBehavior elementOnly =
      ActionRequiredBehavior._('');

  /// List of all enum-like values
  static final List<ActionRequiredBehavior> values = [
    must,
    could,
    must_unless_documented,
  ];

  /// Returns the enum value with an element attached
  ActionRequiredBehavior withElement(Element? newElement) {
    return ActionRequiredBehavior._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ActionRequiredBehavior] from JSON.
  static ActionRequiredBehavior fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionRequiredBehavior.elementOnly.withElement(element);
    }
    return ActionRequiredBehavior.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ActionRequiredBehavior.$fhirCode';
}
