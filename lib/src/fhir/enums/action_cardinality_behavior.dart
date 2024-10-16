import 'package:fhir_r4/fhir_r4.dart';

/// Defines behavior for an action or a group for how many times that item may be repeated.
enum ActionCardinalityBehavior {
  /// Display: Single
  /// Definition: The action may only be selected one time.
  single('single'),

  /// Display: Multiple
  /// Definition: The action may be selected multiple times.
  multiple('multiple'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ActionCardinalityBehavior(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ActionCardinalityBehavior fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionCardinalityBehavior.elementOnly.withElement(element);
    }
    return ActionCardinalityBehavior.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ActionCardinalityBehavior withElement(Element? newElement) {
    return ActionCardinalityBehavior.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
