import 'package:fhir_r4/fhir_r4.dart';

/// Defines selection behavior of a group.
enum ActionSelectionBehavior {
  /// Display: Any
  /// Definition: Any number of the actions in the group may be chosen, from zero to all.
  any('any'),

  /// Display: All
  /// Definition: All the actions in the group must be selected as a single unit.
  all('all'),

  /// Display: All Or None
  /// Definition: All the actions in the group are meant to be chosen as a single unit: either all must be selected by the end user, or none may be selected.
  all_or_none('all-or-none'),

  /// Display: Exactly One
  /// Definition: The end user must choose one and only one of the selectable actions in the group. The user SHALL NOT choose none of the actions in the group.
  exactly_one('exactly-one'),

  /// Display: At Most One
  /// Definition: The end user may choose zero or at most one of the actions in the group.
  at_most_one('at-most-one'),

  /// Display: One Or More
  /// Definition: The end user must choose a minimum of one, and as many additional as desired.
  one_or_more('one-or-more'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ActionSelectionBehavior(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ActionSelectionBehavior fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionSelectionBehavior.elementOnly.withElement(element);
    }
    return ActionSelectionBehavior.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ActionSelectionBehavior withElement(Element? newElement) {
    return ActionSelectionBehavior.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
