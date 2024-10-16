import 'package:fhir_r4/fhir_r4.dart';

/// Example codes for grouping goals to use for filtering or presentation.
enum GoalCategory {
  /// Display: Dietary
  /// Definition: Goals related to the consumption of food and/or beverages.
  dietary('dietary'),

  /// Display: Safety
  /// Definition: Goals related to the personal protection of the subject.
  safety('safety'),

  /// Display: Behavioral
  /// Definition: Goals related to the manner in which the subject acts.
  behavioral('behavioral'),

  /// Display: Nursing
  /// Definition: Goals related to the practice of nursing or established by nurses.
  nursing('nursing'),

  /// Display: Physiotherapy
  /// Definition: Goals related to the mobility and/or motor capability of the subject.
  physiotherapy('physiotherapy'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const GoalCategory(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static GoalCategory fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalCategory.elementOnly.withElement(element);
    }
    return GoalCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  GoalCategory withElement(Element? newElement) {
    return GoalCategory.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
