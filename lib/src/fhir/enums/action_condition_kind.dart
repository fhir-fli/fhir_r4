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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ActionConditionKind(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ActionConditionKind fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionConditionKind.elementOnly.withElement(element);
    }
    return ActionConditionKind.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ActionConditionKind withElement(Element? newElement) {
    return ActionConditionKind.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
