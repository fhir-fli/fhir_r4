/// The purpose of the Claim: predetermination, preauthorization, claim.
enum Use {
  /// Display: Claim
  /// Definition: The treatment is complete and this represents a Claim for the services.
  claim,

  /// Display: Preauthorization
  /// Definition: The treatment is proposed and this represents a Pre-authorization for the services.
  preauthorization,

  /// Display: Predetermination
  /// Definition: The treatment is proposed and this represents a Pre-determination for the services.
  predetermination,
  ;

  @override
  String toString() {
    switch (this) {
      case claim:
        return 'claim';
      case preauthorization:
        return 'preauthorization';
      case predetermination:
        return 'predetermination';
    }
  }

  String toJson() => toString();
  static Use fromString(String str) {
    switch (str) {
      case 'claim':
        return Use.claim;
      case 'preauthorization':
        return Use.preauthorization;
      case 'predetermination':
        return Use.predetermination;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static Use fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
