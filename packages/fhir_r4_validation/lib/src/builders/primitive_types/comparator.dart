part of 'primitive_types.dart';

/// A value set that defines a set of codes that are used to indicate the
enum Comparator {
  /// The value of the target is equal to the reference value.
  equal,

  /// The value of the target is not equal to the reference value.
  equivalent,

  /// The value of the target is greater than the reference value.
  greaterThan,

  /// The value of the target is less than the reference value.
  greaterThanEqual,

  /// The value of the target is less than or equal to the reference value.
  lessThan,

  /// The value of the target is greater than or equal to the reference value.
  lessThanEqual,
}
