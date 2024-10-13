/// If field is a list, how to manage the source.
enum StructureMapSourceListMode {
  /// Display: First
  /// Definition: Only process this rule for the first in the list.
  first,

  /// Display: All but the first
  /// Definition: Process this rule for all but the first.
  not_first,

  /// Display: Last
  /// Definition: Only process this rule for the last in the list.
  last,

  /// Display: All but the last
  /// Definition: Process this rule for all but the last.
  not_last,

  /// Display: Enforce only one
  /// Definition: Only process this rule is there is only item.
  only_one,
  ;

  @override
  String toString() {
    switch (this) {
      case first:
        return 'first';
      case not_first:
        return 'not_first';
      case last:
        return 'last';
      case not_last:
        return 'not_last';
      case only_one:
        return 'only_one';
    }
  }

  /// Returns a [String] from a [StructureMapSourceListMode] enum.
  String toJson() => toString();

  /// Returns a [StructureMapSourceListMode] from a [String] enum.
  static StructureMapSourceListMode fromString(String str) {
    switch (str) {
      case 'first':
        return StructureMapSourceListMode.first;
      case 'not_first':
        return StructureMapSourceListMode.not_first;
      case 'last':
        return StructureMapSourceListMode.last;
      case 'not_last':
        return StructureMapSourceListMode.not_last;
      case 'only_one':
        return StructureMapSourceListMode.only_one;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [StructureMapSourceListMode] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static StructureMapSourceListMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
