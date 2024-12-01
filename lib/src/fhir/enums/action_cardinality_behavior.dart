// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines behavior for an action or a group for how many times that item may be repeated.
class ActionCardinalityBehavior {
  // Private constructor for internal use (like enum)
  ActionCardinalityBehavior._(this.fhirCode, {this.element});

  /// Factory constructor to create [ActionCardinalityBehavior] from JSON.
  factory ActionCardinalityBehavior.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionCardinalityBehavior.elementOnly.withElement(element);
    }
    return ActionCardinalityBehavior._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ActionCardinalityBehavior values
  /// single
  static final ActionCardinalityBehavior single = ActionCardinalityBehavior._(
    'single',
  );

  /// multiple
  static final ActionCardinalityBehavior multiple = ActionCardinalityBehavior._(
    'multiple',
  );

  /// For instances where an Element is present but not value

  static final ActionCardinalityBehavior elementOnly =
      ActionCardinalityBehavior._('');

  /// List of all enum-like values
  static final List<ActionCardinalityBehavior> values = [
    single,
    multiple,
  ];

  /// Returns the enum value with an element attached
  ActionCardinalityBehavior withElement(Element? newElement) {
    return ActionCardinalityBehavior._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
