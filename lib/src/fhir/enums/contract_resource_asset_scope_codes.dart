/// This value set contract specific codes for asset scope.
enum ContractResourceAssetScopeCodes {
  /// Display: Thing
  /// Definition: To be completed
  thing,
  ;

  @override
  String toString() {
    switch (this) {
      case thing:
        return 'thing';
    }
  }

  String toJson() => toString();
  static ContractResourceAssetScopeCodes fromString(String str) {
    switch (str) {
      case 'thing':
        return ContractResourceAssetScopeCodes.thing;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ContractResourceAssetScopeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
