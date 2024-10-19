// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines organization behavior of a group.
class ActionGroupingBehavior {
  // Private constructor for internal use (like enum)
  ActionGroupingBehavior._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ActionGroupingBehavior values
  /// visual_group
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionGroupingBehavior visual_group = ActionGroupingBehavior._(
    'visual-group',
  );

  /// logical_group
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionGroupingBehavior logical_group = ActionGroupingBehavior._(
    'logical-group',
  );

  /// sentence_group
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionGroupingBehavior sentence_group = ActionGroupingBehavior._(
    'sentence-group',
  );

  /// For instances where an Element is present but not value

  static final ActionGroupingBehavior elementOnly =
      ActionGroupingBehavior._('');

  /// List of all enum-like values
  static final List<ActionGroupingBehavior> values = [
    visual_group,
    logical_group,
    sentence_group,
  ];

  /// Returns the enum value with an element attached
  ActionGroupingBehavior withElement(Element? newElement) {
    return ActionGroupingBehavior._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ActionGroupingBehavior] from JSON.
  static ActionGroupingBehavior fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionGroupingBehavior.elementOnly.withElement(element);
    }
    return ActionGroupingBehavior.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ActionGroupingBehavior.$fhirCode';
}
