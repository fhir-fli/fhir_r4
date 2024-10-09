import 'package:json_annotation/json_annotation.dart';

/// Defines organization behavior of a group.
enum ActionGroupingBehavior {
  /// Display: Visual Group
  /// Definition: Any group marked with this behavior should be displayed as a visual group to the end user.
  @JsonValue('visual-group')
  visual_group,

  /// Display: Logical Group
  /// Definition: A group with this behavior logically groups its sub-elements, and may be shown as a visual group to the end user, but it is not required to do so.
  @JsonValue('logical-group')
  logical_group,

  /// Display: Sentence Group
  /// Definition: A group of related alternative actions is a sentence group if the target referenced by the action is the same in all the actions and each action simply constitutes a different variation on how to specify the details for the target. For example, two actions that could be in a SentenceGroup are "aspirin, 500 mg, 2 times per day" and "aspirin, 300 mg, 3 times per day". In both cases, aspirin is the target referenced by the action, and the two actions represent different options for how aspirin might be ordered for the patient. Note that a SentenceGroup would almost always have an associated selection behavior of "AtMostOne", unless it's a required action, in which case, it would be "ExactlyOne".
  @JsonValue('sentence-group')
  sentence_group,
  ;

  @override
  String toString() {
    switch (this) {
      case visual_group:
        return 'visual-group';
      case logical_group:
        return 'logical-group';
      case sentence_group:
        return 'sentence-group';
    }
  }

  String toJson() => toString();
  static ActionGroupingBehavior fromString(String str) {
    switch (str) {
      case 'visual-group':
        return ActionGroupingBehavior.visual_group;
      case 'logical-group':
        return ActionGroupingBehavior.logical_group;
      case 'sentence-group':
        return ActionGroupingBehavior.sentence_group;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ActionGroupingBehavior fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
