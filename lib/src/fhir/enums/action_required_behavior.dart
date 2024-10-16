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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ActionRequiredBehavior(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ActionRequiredBehavior fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionRequiredBehavior.elementOnly.withElement(element);
    }
    return ActionRequiredBehavior.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ActionRequiredBehavior withElement(Element? newElement) {
    return ActionRequiredBehavior.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
