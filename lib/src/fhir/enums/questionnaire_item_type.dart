import 'package:json_annotation/json_annotation.dart';

/// Distinguishes groups from questions and display text and indicates data type for questions.
enum QuestionnaireItemType {
  /// Display: Group
  /// Definition: An item with no direct answer but should have at least one child item.
  @JsonValue('group')
  group,
  /// Display: Display
  /// Definition: Text for display that will not capture an answer or have child items.
  @JsonValue('display')
  display,
  /// Display: Question
  /// Definition: An item that defines a specific answer to be captured, and which may have child items. (the answer provided in the QuestionnaireResponse should be of the defined datatype).
  @JsonValue('question')
  question,
;

@override
  String toString() {
      switch(this) {
        case group: return 'group';
        case display: return 'display';
        case question: return 'question';
      }
      }
String toJson() => toString();
  QuestionnaireItemType fromString(String str) {
    switch(str) {
      case 'group': return QuestionnaireItemType.group;
      case 'display': return QuestionnaireItemType.display;
      case 'question': return QuestionnaireItemType.question;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 QuestionnaireItemType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

