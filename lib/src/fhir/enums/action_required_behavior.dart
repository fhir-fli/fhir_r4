// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines expectations around whether an action or action group is required.
enum ActionRequiredBehavior {
  /// Display: Must
  /// Definition: An action with this behavior must be included in the actions processed by the end user; the end user SHALL NOT choose not to include this action.
  must('must'),

  /// Display: Could
  /// Definition: An action with this behavior may be included in the set of actions processed by the end user.
  could('could'),

  /// Display: Must Unless Documented
  /// Definition: An action with this behavior must be included in the set of actions processed by the end user, unless the end user provides documentation as to why the action was not included.
  must_unless_documented('must-unless-documented'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ActionRequiredBehavior(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ActionRequiredBehavior] instances.
  static ActionRequiredBehavior fromJson(
    Map<String, dynamic> json,
  ) {
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

  /// Returns the enum value with an element
  ActionRequiredBehavior withElement(Element? newElement) {
    return ActionRequiredBehavior.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
