import 'package:fhir_r4/fhir_r4.dart';

/// Defines selection frequency behavior for an action or group.
enum ActionPrecheckBehavior {
  /// Display: Yes
  /// Definition: An action with this behavior is one of the most frequent action that is, or should be, included by an end user, for the particular context in which the action occurs. The system displaying the action to the end user should consider "pre-checking" such an action as a convenience for the user.
  yes('yes'),

  /// Display: No
  /// Definition: An action with this behavior is one of the less frequent actions included by the end user, for the particular context in which the action occurs. The system displaying the actions to the end user would typically not "pre-check" such an action.
  no('no'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ActionPrecheckBehavior(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ActionPrecheckBehavior fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionPrecheckBehavior.elementOnly.withElement(element);
    }
    return ActionPrecheckBehavior.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ActionPrecheckBehavior withElement(Element? newElement) {
    return ActionPrecheckBehavior.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
