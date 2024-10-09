/// This value set defines a set of codes that can be used to indicate the particular target population the reference range applies to.
enum ObservationReferenceRangeAppliesToCodes {
  value248153007,
  value248152002,
  value77386006,
  ;

  @override
  String toString() {
    switch (this) {
      case value248153007:
        return '248153007';
      case value248152002:
        return '248152002';
      case value77386006:
        return '77386006';
    }
  }

  String toJson() => toString();
  static ObservationReferenceRangeAppliesToCodes fromString(String str) {
    switch (str) {
      case '248153007':
        return ObservationReferenceRangeAppliesToCodes.value248153007;
      case '248152002':
        return ObservationReferenceRangeAppliesToCodes.value248152002;
      case '77386006':
        return ObservationReferenceRangeAppliesToCodes.value77386006;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ObservationReferenceRangeAppliesToCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
