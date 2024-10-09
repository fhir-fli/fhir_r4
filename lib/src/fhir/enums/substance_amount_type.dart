/// The relationship between two substance types.
enum SubstanceAmountType {
  /// Display: Average
  Average,

  /// Display: Approximately
  Approximately,

  /// Display: Less Than
  LessThan,

  /// Display: More Than
  MoreThan,
  ;

  @override
  String toString() {
    switch (this) {
      case Average:
        return 'Average';
      case Approximately:
        return 'Approximately';
      case LessThan:
        return 'LessThan';
      case MoreThan:
        return 'MoreThan';
    }
  }

  String toJson() => toString();
  static SubstanceAmountType fromString(String str) {
    switch (str) {
      case 'Average':
        return SubstanceAmountType.Average;
      case 'Approximately':
        return SubstanceAmountType.Approximately;
      case 'LessThan':
        return SubstanceAmountType.LessThan;
      case 'MoreThan':
        return SubstanceAmountType.MoreThan;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static SubstanceAmountType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
