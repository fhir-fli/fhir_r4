/// An example value set of SNOMED CT concepts that can classify a requested service
enum ServiceRequestCategoryCodes {
  /// Display: Laboratory procedure
  value108252007,

  /// Display: Imaging
  value363679005,

  /// Display: Counselling
  value409063005,

  /// Display: Education
  value409073007,

  /// Display: Surgical procedure
  value387713003,
  ;

  @override
  String toString() {
    switch (this) {
      case value108252007:
        return '108252007';
      case value363679005:
        return '363679005';
      case value409063005:
        return '409063005';
      case value409073007:
        return '409073007';
      case value387713003:
        return '387713003';
    }
  }

  String toJson() => toString();
  static ServiceRequestCategoryCodes fromString(String str) {
    switch (str) {
      case '108252007':
        return ServiceRequestCategoryCodes.value108252007;
      case '363679005':
        return ServiceRequestCategoryCodes.value363679005;
      case '409063005':
        return ServiceRequestCategoryCodes.value409063005;
      case '409073007':
        return ServiceRequestCategoryCodes.value409073007;
      case '387713003':
        return ServiceRequestCategoryCodes.value387713003;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ServiceRequestCategoryCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
