import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the level of importance associated with reaching or sustaining a goal.
enum GoalPriority {
  /// Display: High Priority
  /// Definition: Indicates that the goal is of considerable importance and should be a primary focus of care delivery.
  high_priority('high-priority'),

  /// Display: Medium Priority
  /// Definition: Indicates that the goal has a reasonable degree of importance and that concrete action should be taken towards the goal. Attainment is not as critical as high-priority goals.
  medium_priority('medium-priority'),

  /// Display: Low Priority
  /// Definition: The goal is desirable but is not sufficiently important to devote significant resources to. Achievement of the goal may be sought when incidental to achieving other goals.
  low_priority('low-priority'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const GoalPriority(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static GoalPriority fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalPriority.elementOnly.withElement(element);
    }
    return GoalPriority.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  GoalPriority withElement(Element? newElement) {
    return GoalPriority.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
