import 'package:fhir_r4/fhir_r4.dart';

/// Identifies types of events that might trigger the start of a goal.
enum GoalStartEvent {
  /// Display: Admission to hospital
  /// Definition:
  value32485007('32485007'),

  /// Display: Discharge from hospital
  /// Definition:
  value308283009('308283009'),

  /// Display: Completion time of procedure
  /// Definition:
  value442137000('442137000'),

  /// Display: Childbirth
  /// Definition:
  value386216000('386216000'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const GoalStartEvent(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static GoalStartEvent fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalStartEvent.elementOnly.withElement(element);
    }
    return GoalStartEvent.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  GoalStartEvent withElement(Element? newElement) {
    return GoalStartEvent.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
