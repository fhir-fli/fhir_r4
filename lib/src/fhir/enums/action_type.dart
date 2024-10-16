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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ActionType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ActionType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionType.elementOnly.withElement(element);
    }
    return ActionType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ActionType withElement(Element? newElement) {
    return ActionType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
