// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of action to be performed.
enum ActionType {
  /// Display: Create
  /// Definition: The action is to create a new resource.
  create('create'),

  /// Display: Update
  /// Definition: The action is to update an existing resource.
  update('update'),

  /// Display: Remove
  /// Definition: The action is to remove an existing resource.
  remove('remove'),

  /// Display: Fire Event
  /// Definition: The action is to fire a specific event.
  fire_event('fire-event'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ActionType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ActionType] instances.
  static ActionType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionType.elementOnly.withElement(
        element,
      );
    }
    return ActionType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ActionType withElement(Element? newElement) {
    return ActionType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
