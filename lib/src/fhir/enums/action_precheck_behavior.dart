// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Defines selection frequency behavior for an action or group.
@collection
class ActionPrecheckBehavior {
  /// Constructor for internal use (like enum)
  ActionPrecheckBehavior({this.fhirCode, this.element})
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

  /// ActionPrecheckBehavior values
  /// yes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionPrecheckBehavior yes = ActionPrecheckBehavior(
    fhirCode: 'yes',
  );

  /// no
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionPrecheckBehavior no = ActionPrecheckBehavior(
    fhirCode: 'no',
  );

  /// For instances where an Element is present but not value

  static final ActionPrecheckBehavior elementOnly = ActionPrecheckBehavior();

  /// List of all enum-like values
  static final List<ActionPrecheckBehavior> values = [
    yes,
    no,
  ];

  /// Returns the enum value with an element attached
  ActionPrecheckBehavior withElement(Element? newElement) {
    return ActionPrecheckBehavior(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ActionPrecheckBehavior.$fhirCode';
}
