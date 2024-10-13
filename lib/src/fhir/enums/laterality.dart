/// Laterality: SNOMED-CT concepts for 'left', 'right', and 'bilateral'
enum Laterality {
  /// Display: Unilateral left
  value419161000,

  /// Display: Unilateral right
  value419465000,

  /// Display: Bilateral
  value51440002,
  ;

  @override
  String toString() {
    switch (this) {
      case value419161000:
        return '419161000';
      case value419465000:
        return '419465000';
      case value51440002:
        return '51440002';
    }
  }

  /// Returns a [String] from a [Laterality] enum.
  String toJson() => toString();

  /// Returns a [Laterality] from a [String] enum.
  static Laterality fromString(String str) {
    switch (str) {
      case '419161000':
        return Laterality.value419161000;
      case '419465000':
        return Laterality.value419465000;
      case '51440002':
        return Laterality.value51440002;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [Laterality] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static Laterality fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
