// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Defines selection behavior of a group.
@collection
class ActionSelectionBehavior {
  /// Constructor for internal use (like enum)
  ActionSelectionBehavior({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ActionSelectionBehavior values
  /// any
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionSelectionBehavior any = ActionSelectionBehavior(
    fhirCode: 'any',
  );

  /// all
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionSelectionBehavior all = ActionSelectionBehavior(
    fhirCode: 'all',
  );

  /// all_or_none
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionSelectionBehavior all_or_none = ActionSelectionBehavior(
    fhirCode: 'all-or-none',
  );

  /// exactly_one
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionSelectionBehavior exactly_one = ActionSelectionBehavior(
    fhirCode: 'exactly-one',
  );

  /// at_most_one
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionSelectionBehavior at_most_one = ActionSelectionBehavior(
    fhirCode: 'at-most-one',
  );

  /// one_or_more
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionSelectionBehavior one_or_more = ActionSelectionBehavior(
    fhirCode: 'one-or-more',
  );

  /// For instances where an Element is present but not value

  static final ActionSelectionBehavior elementOnly = ActionSelectionBehavior();

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
    return ActionSelectionBehavior(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
