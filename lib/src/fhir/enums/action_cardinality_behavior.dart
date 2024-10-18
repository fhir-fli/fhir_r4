// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines behavior for an action or a group for how many times that item may be repeated.
enum ActionCardinalityBehavior {
  /// Display: Single
  /// Definition: The action may only be selected one time.
  single('single'),

  /// Display: Multiple
  /// Definition: The action may be selected multiple times.
  multiple('multiple'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ActionCardinalityBehavior(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ActionCardinalityBehavior] instances.
  static ActionCardinalityBehavior fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionCardinalityBehavior.elementOnly.withElement(element);
    }
    return ActionCardinalityBehavior.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ActionCardinalityBehavior withElement(Element? newElement) {
    return ActionCardinalityBehavior.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
