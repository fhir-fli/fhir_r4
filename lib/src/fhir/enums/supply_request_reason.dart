/// The reason why the supply item was requested.
enum SupplyRequestReason {
  /// Display: Patient Care
  /// Definition: The supply has been requested for use in direct patient care.
  patient_care,

  /// Display: Ward Stock
  /// Definition: The supply has been requested for creating or replenishing ward stock.
  ward_stock,
  ;

  @override
  String toString() {
    switch (this) {
      case patient_care:
        return 'patient-care';
      case ward_stock:
        return 'ward-stock';
    }
  }

  /// Returns a [String] from a [SupplyRequestReason] enum.
  String toJson() => toString();

  /// Returns a [SupplyRequestReason] from a [String] enum.
  static SupplyRequestReason fromString(String str) {
    switch (str) {
      case 'patient-care':
        return SupplyRequestReason.patient_care;
      case 'ward-stock':
        return SupplyRequestReason.ward_stock;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [SupplyRequestReason] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static SupplyRequestReason fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
