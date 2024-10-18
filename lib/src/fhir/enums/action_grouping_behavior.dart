// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines organization behavior of a group.
enum ActionGroupingBehavior {
  /// Display: Visual Group
  /// Definition: Any group marked with this behavior should be displayed as a visual group to the end user.
  visual_group('visual-group'),

  /// Display: Logical Group
  /// Definition: A group with this behavior logically groups its sub-elements, and may be shown as a visual group to the end user, but it is not required to do so.
  logical_group('logical-group'),

  /// Display: Sentence Group
  /// Definition: A group of related alternative actions is a sentence group if the target referenced by the action is the same in all the actions and each action simply constitutes a different variation on how to specify the details for the target. For example, two actions that could be in a SentenceGroup are "aspirin, 500 mg, 2 times per day" and "aspirin, 300 mg, 3 times per day". In both cases, aspirin is the target referenced by the action, and the two actions represent different options for how aspirin might be ordered for the patient. Note that a SentenceGroup would almost always have an associated selection behavior of "AtMostOne", unless it's a required action, in which case, it would be "ExactlyOne".
  sentence_group('sentence-group'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ActionGroupingBehavior(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ActionGroupingBehavior] instances.
  static ActionGroupingBehavior fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionGroupingBehavior.elementOnly.withElement(
        element,
      );
    }
    return ActionGroupingBehavior.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ActionGroupingBehavior withElement(Element? newElement) {
    return ActionGroupingBehavior.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
