/// The criteria by which a question is enabled.
enum QuestionnaireItemOperator {
  /// Display: Exists
  /// Definition: True if whether an answer exists is equal to the enableWhen answer (which must be a boolean).
  exists,

  /// Display: Equals
  /// Definition: True if whether at least one answer has a value that is equal to the enableWhen answer.
  equals,

  /// Display: Not Equals
  /// Definition: True if whether at least no answer has a value that is equal to the enableWhen answer.
  notEquals,

  /// Display: Greater Than
  /// Definition: True if whether at least no answer has a value that is greater than the enableWhen answer.
  greaterThan,

  /// Display: Less Than
  /// Definition: True if whether at least no answer has a value that is less than the enableWhen answer.
  lessThan,

  /// Display: Greater or Equals
  /// Definition: True if whether at least no answer has a value that is greater or equal to the enableWhen answer.
  greaterThanOrEquals,

  /// Display: Less or Equals
  /// Definition: True if whether at least no answer has a value that is less or equal to the enableWhen answer.
  lessThanOrEquals,
  ;

  @override
  String toString() {
    switch (this) {
      case exists:
        return 'exists';
      case equals:
        return '=';
      case notEquals:
        return '!=';
      case greaterThan:
        return '>';
      case lessThan:
        return '<';
      case greaterThanOrEquals:
        return '>=';
      case lessThanOrEquals:
        return '<=';
    }
  }

  String toJson() => toString();
  static QuestionnaireItemOperator fromString(String str) {
    switch (str) {
      case 'exists':
        return QuestionnaireItemOperator.exists;
      case '=':
        return QuestionnaireItemOperator.equals;
      case '!=':
        return QuestionnaireItemOperator.notEquals;
      case '>':
        return QuestionnaireItemOperator.greaterThan;
      case '<':
        return QuestionnaireItemOperator.lessThan;
      case '>=':
        return QuestionnaireItemOperator.greaterThanOrEquals;
      case '<=':
        return QuestionnaireItemOperator.lessThanOrEquals;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static QuestionnaireItemOperator fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
