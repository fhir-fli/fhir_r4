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

  String toJson() => toString();
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

  static EnableWhenBehavior fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
