// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines selection frequency behavior for an action or group.
class ActionPrecheckBehavior {
  // Private constructor for internal use (like enum)
  ActionPrecheckBehavior._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ActionPrecheckBehavior values
  /// yes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionPrecheckBehavior yes = ActionPrecheckBehavior._(
    'yes',
  );

  /// no
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionPrecheckBehavior no = ActionPrecheckBehavior._(
    'no',
  );

  /// For instances where an Element is present but not value

  static final ActionPrecheckBehavior elementOnly =
      ActionPrecheckBehavior._('');

  /// List of all enum-like values
  static final List<ActionPrecheckBehavior> values = [
    yes,
    no,
  ];

  /// Returns the enum value with an element attached
  ActionPrecheckBehavior withElement(Element? newElement) {
    return ActionPrecheckBehavior._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ActionPrecheckBehavior] from JSON.
  static ActionPrecheckBehavior fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionPrecheckBehavior.elementOnly.withElement(element);
    }
    return ActionPrecheckBehavior.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
