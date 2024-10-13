/// Set of handling instructions prior testing of the specimen.
enum HandlingConditionSet {
  /// Display: room temperature
  /// Definition: room temperature.
  room,

  /// Display: refrigerated
  /// Definition: refrigerated temperature.
  refrigerated,

  /// Display: frozen
  /// Definition: frozen temperature.
  frozen,
  ;

  @override
  String toString() {
    switch (this) {
      case room:
        return 'room';
      case refrigerated:
        return 'refrigerated';
      case frozen:
        return 'frozen';
    }
  }

  /// Returns a [String] from a [HandlingConditionSet] enum.
  String toJson() => toString();

  /// Returns a [HandlingConditionSet] from a [String] enum.
  static HandlingConditionSet fromString(String str) {
    switch (str) {
      case 'room':
        return HandlingConditionSet.room;
      case 'refrigerated':
        return HandlingConditionSet.refrigerated;
      case 'frozen':
        return HandlingConditionSet.frozen;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [HandlingConditionSet] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static HandlingConditionSet fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
