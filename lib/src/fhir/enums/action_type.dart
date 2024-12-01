// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of action to be performed.
class ActionType {
  // Private constructor for internal use (like enum)
  ActionType._(this.fhirCode, {this.element});

  /// Factory constructor to create [ActionType] from JSON.
  factory ActionType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionType.elementOnly.withElement(element);
    }
    return ActionType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ActionType values
  /// create
  static final ActionType create = ActionType._(
    'create',
  );

  /// update
  static final ActionType update = ActionType._(
    'update',
  );

  /// remove
  static final ActionType remove = ActionType._(
    'remove',
  );

  /// fire_event
  static final ActionType fire_event = ActionType._(
    'fire-event',
  );

  /// For instances where an Element is present but not value

  static final ActionType elementOnly = ActionType._('');

  /// List of all enum-like values
  static final List<ActionType> values = [
    create,
    update,
    remove,
    fire_event,
  ];

  /// Returns the enum value with an element attached
  ActionType withElement(Element? newElement) {
    return ActionType._(fhirCode, element: newElement);
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
