/// Controls how multiple enableWhen values are interpreted -  whether all or any must be true.
enum EnableWhenBehavior {
  /// Display: All
  /// Definition: Enable the question when all the enableWhen criteria are satisfied.
  all,

  /// Display: Any
  /// Definition: Enable the question when any of the enableWhen criteria are satisfied.
  any,
  ;

  @override
  String toString() {
    switch (this) {
      case all:
        return 'all';
      case any:
        return 'any';
    }
  }

  /// Returns a [String] from a [EnableWhenBehavior] enum.
  String toJson() => toString();

  /// Returns a [EnableWhenBehavior] from a [String] enum.
  static EnableWhenBehavior fromString(String str) {
    switch (str) {
      case 'all':
        return EnableWhenBehavior.all;
      case 'any':
        return EnableWhenBehavior.any;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [EnableWhenBehavior] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static EnableWhenBehavior fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
