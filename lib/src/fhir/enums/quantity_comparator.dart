/// How the Quantity should be understood and represented.
enum QuantityComparator {
  /// Display: Less than
  /// Definition: The actual value is less than the given value.
  lessThan,

  /// Display: Less or Equal to
  /// Definition: The actual value is less than or equal to the given value.
  lessThanOrEquals,

  /// Display: Greater or Equal to
  /// Definition: The actual value is greater than or equal to the given value.
  greaterThanOrEquals,

  /// Display: Greater than
  /// Definition: The actual value is greater than the given value.
  greaterThan,
  ;

  @override
  String toString() {
    switch (this) {
      case lessThan:
        return '<';
      case lessThanOrEquals:
        return '<=';
      case greaterThanOrEquals:
        return '>=';
      case greaterThan:
        return '>';
    }
  }

  /// Returns a [String] from a [QuantityComparator] enum.
  String toJson() => toString();

  /// Returns a [QuantityComparator] from a [String] enum.
  static QuantityComparator fromString(String str) {
    switch (str) {
      case '<':
        return QuantityComparator.lessThan;
      case '<=':
        return QuantityComparator.lessThanOrEquals;
      case '>=':
        return QuantityComparator.greaterThanOrEquals;
      case '>':
        return QuantityComparator.greaterThan;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [QuantityComparator] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static QuantityComparator fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
