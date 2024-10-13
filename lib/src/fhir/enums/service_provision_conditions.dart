/// The code(s) that detail the conditions under which the healthcare service is available/offered.
enum ServiceProvisionConditions {
  /// Display: Free
  /// Definition: This service is available for no patient cost.
  free,

  /// Display: Discounts Available
  /// Definition: There are discounts available on this service for qualifying patients.
  disc,

  /// Display: Fees apply
  /// Definition: Fees apply for this service.
  cost,
  ;

  @override
  String toString() {
    switch (this) {
      case free:
        return 'free';
      case disc:
        return 'disc';
      case cost:
        return 'cost';
    }
  }

  /// Returns a [String] from a [ServiceProvisionConditions] enum.
  String toJson() => toString();

  /// Returns a [ServiceProvisionConditions] from a [String] enum.
  static ServiceProvisionConditions fromString(String str) {
    switch (str) {
      case 'free':
        return ServiceProvisionConditions.free;
      case 'disc':
        return ServiceProvisionConditions.disc;
      case 'cost':
        return ServiceProvisionConditions.cost;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ServiceProvisionConditions] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ServiceProvisionConditions fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
