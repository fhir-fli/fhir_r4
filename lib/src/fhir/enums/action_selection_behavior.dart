// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines selection behavior of a group.
class ActionSelectionBehavior {
  // Private constructor for internal use (like enum)
  ActionSelectionBehavior._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ActionSelectionBehavior values
  /// any
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionSelectionBehavior any = ActionSelectionBehavior._(
    'any',
  );

  /// all
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionSelectionBehavior all = ActionSelectionBehavior._(
    'all',
  );

  /// all_or_none
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionSelectionBehavior all_or_none = ActionSelectionBehavior._(
    'all-or-none',
  );

  /// exactly_one
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionSelectionBehavior exactly_one = ActionSelectionBehavior._(
    'exactly-one',
  );

  /// at_most_one
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionSelectionBehavior at_most_one = ActionSelectionBehavior._(
    'at-most-one',
  );

  /// one_or_more
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionSelectionBehavior one_or_more = ActionSelectionBehavior._(
    'one-or-more',
  );

  /// For instances where an Element is present but not value

  static final ActionSelectionBehavior elementOnly =
      ActionSelectionBehavior._('');

  /// List of all enum-like values
  static final List<ActionSelectionBehavior> values = [
    any,
    all,
    all_or_none,
    exactly_one,
    at_most_one,
    one_or_more,
  ];

  /// Returns the enum value with an element attached
  ActionSelectionBehavior withElement(Element? newElement) {
    return ActionSelectionBehavior._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ActionSelectionBehavior] from JSON.
  static ActionSelectionBehavior fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionSelectionBehavior.elementOnly.withElement(element);
    }
    return ActionSelectionBehavior.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ActionSelectionBehavior.$fhirCode';
}
