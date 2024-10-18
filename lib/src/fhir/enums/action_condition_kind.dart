// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines the kinds of conditions that can appear on actions.
enum ActionConditionKind {
  /// Display: Applicability
  /// Definition: The condition describes whether or not a given action is applicable.
  applicability('applicability'),

  /// Display: Start
  /// Definition: The condition is a starting condition for the action.
  start('start'),

  /// Display: Stop
  /// Definition: The condition is a stop, or exit condition for the action.
  stop('stop'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ActionConditionKind(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ActionConditionKind] instances.
  static ActionConditionKind fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionConditionKind.elementOnly.withElement(
        element,
      );
    }
    return ActionConditionKind.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ActionConditionKind withElement(Element? newElement) {
    return ActionConditionKind.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
