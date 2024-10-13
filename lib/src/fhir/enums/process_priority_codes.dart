/// This value set includes the financial processing priority codes.
enum ProcessPriorityCodes {
  /// Display: Immediate
  /// Definition: Immediately in real time.
  stat,

  /// Display: Normal
  /// Definition: With best effort.
  normal,

  /// Display: Deferred
  /// Definition: Later, when possible.
  deferred_,
  ;

  @override
  String toString() {
    switch (this) {
      case stat:
        return 'stat';
      case normal:
        return 'normal';
      case deferred_:
        return 'deferred';
    }
  }

  /// Returns a [String] from a [ProcessPriorityCodes] enum.
  String toJson() => toString();

  /// Returns a [ProcessPriorityCodes] from a [String] enum.
  static ProcessPriorityCodes fromString(String str) {
    switch (str) {
      case 'stat':
        return ProcessPriorityCodes.stat;
      case 'normal':
        return ProcessPriorityCodes.normal;
      case 'deferred':
        return ProcessPriorityCodes.deferred_;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ProcessPriorityCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ProcessPriorityCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
