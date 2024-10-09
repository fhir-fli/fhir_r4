/// The type of operator to use for assertion.
enum AssertionOperatorType {
  /// Display: equals
  /// Definition: Default value. Equals comparison.
  equals,

  /// Display: notEquals
  /// Definition: Not equals comparison.
  notEquals,

  /// Display: in
  /// Definition: Compare value within a known set of values.
  in_,

  /// Display: notIn
  /// Definition: Compare value not within a known set of values.
  notIn,

  /// Display: greaterThan
  /// Definition: Compare value to be greater than a known value.
  greaterThan,

  /// Display: lessThan
  /// Definition: Compare value to be less than a known value.
  lessThan,

  /// Display: empty
  /// Definition: Compare value is empty.
  empty,

  /// Display: notEmpty
  /// Definition: Compare value is not empty.
  notEmpty,

  /// Display: contains
  /// Definition: Compare value string contains a known value.
  contains,

  /// Display: notContains
  /// Definition: Compare value string does not contain a known value.
  notContains,

  /// Display: evaluate
  /// Definition: Evaluate the FHIRPath expression as a boolean condition.
  eval,
  ;

  @override
  String toString() {
    switch (this) {
      case equals:
        return 'equals';
      case notEquals:
        return 'notEquals';
      case in_:
        return 'in';
      case notIn:
        return 'notIn';
      case greaterThan:
        return 'greaterThan';
      case lessThan:
        return 'lessThan';
      case empty:
        return 'empty';
      case notEmpty:
        return 'notEmpty';
      case contains:
        return 'contains';
      case notContains:
        return 'notContains';
      case eval:
        return 'eval';
    }
  }

  String toJson() => toString();
  static AssertionOperatorType fromString(String str) {
    switch (str) {
      case 'equals':
        return AssertionOperatorType.equals;
      case 'notEquals':
        return AssertionOperatorType.notEquals;
      case 'in':
        return AssertionOperatorType.in_;
      case 'notIn':
        return AssertionOperatorType.notIn;
      case 'greaterThan':
        return AssertionOperatorType.greaterThan;
      case 'lessThan':
        return AssertionOperatorType.lessThan;
      case 'empty':
        return AssertionOperatorType.empty;
      case 'notEmpty':
        return AssertionOperatorType.notEmpty;
      case 'contains':
        return AssertionOperatorType.contains;
      case 'notContains':
        return AssertionOperatorType.notContains;
      case 'eval':
        return AssertionOperatorType.eval;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static AssertionOperatorType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
