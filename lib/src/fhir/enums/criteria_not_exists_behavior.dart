/// Behavior a server can exhibit when a criteria state does not exist (e.g., state prior to a create or after a delete).
enum CriteriaNotExistsBehavior {
  /// Display: test passes
  /// Definition: The requested conditional statement will pass if a matching state does not exist (e.g., previous state during create).
  test_passes,

  /// Display: test fails
  /// Definition: The requested conditional statement will fail if a matching state does not exist (e.g., previous state during create).
  test_fails,
  ;

  @override
  String toString() {
    switch (this) {
      case test_passes:
        return 'test-passes';
      case test_fails:
        return 'test-fails';
    }
  }

  /// Returns a [String] from a [CriteriaNotExistsBehavior] enum.
  String toJson() => toString();

  /// Returns a [CriteriaNotExistsBehavior] from a [String] enum.
  static CriteriaNotExistsBehavior fromString(String str) {
    switch (str) {
      case 'test-passes':
        return CriteriaNotExistsBehavior.test_passes;
      case 'test-fails':
        return CriteriaNotExistsBehavior.test_fails;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [CriteriaNotExistsBehavior] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static CriteriaNotExistsBehavior fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
