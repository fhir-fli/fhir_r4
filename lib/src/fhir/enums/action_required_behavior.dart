// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Defines expectations around whether an action or action group is required.
@collection
class ActionRequiredBehavior {
  /// Constructor for internal use (like enum)
  ActionRequiredBehavior({this.fhirCode, this.element})
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

  /// ActionRequiredBehavior values
  /// must
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionRequiredBehavior must = ActionRequiredBehavior(
    fhirCode: 'must',
  );

  /// could
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionRequiredBehavior could = ActionRequiredBehavior(
    fhirCode: 'could',
  );

  /// must_unless_documented
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionRequiredBehavior must_unless_documented =
      ActionRequiredBehavior(
    fhirCode: 'must-unless-documented',
  );

  /// For instances where an Element is present but not value

  static final ActionRequiredBehavior elementOnly = ActionRequiredBehavior();

  /// List of all enum-like values
  static final List<ActionRequiredBehavior> values = [
    must,
    could,
    must_unless_documented,
  ];

  /// Returns the enum value with an element attached
  ActionRequiredBehavior withElement(Element? newElement) {
    return ActionRequiredBehavior(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
