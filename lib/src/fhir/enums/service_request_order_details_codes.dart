/// An example value set of Codified order entry details concepts.  These concepts only make sense in the context of what is being ordered.  This example is for a patient ventilation order
enum ServiceRequestOrderDetailsCodes {
  /// Display: Continuous positive airway pressure ventilation treatment (regime/therapy)
  value47545007,

  /// Display: Pressure controlled ventilation (procedure)
  value286812008,

  /// Display: Patient triggered inspiratory assistance (procedure)
  value243144002,

  /// Display: Assisted controlled mandatory ventilation (procedure)
  value243150007,

  /// Display: Synchronized intermittent mandatory ventilation (procedure)
  value59427005,
  ;

  @override
  String toString() {
    switch (this) {
      case value47545007:
        return '47545007';
      case value286812008:
        return '286812008';
      case value243144002:
        return '243144002';
      case value243150007:
        return '243150007';
      case value59427005:
        return '59427005';
    }
  }

  /// Returns a [String] from a [ServiceRequestOrderDetailsCodes] enum.
  String toJson() => toString();

  /// Returns a [ServiceRequestOrderDetailsCodes] from a [String] enum.
  static ServiceRequestOrderDetailsCodes fromString(String str) {
    switch (str) {
      case '47545007':
        return ServiceRequestOrderDetailsCodes.value47545007;
      case '286812008':
        return ServiceRequestOrderDetailsCodes.value286812008;
      case '243144002':
        return ServiceRequestOrderDetailsCodes.value243144002;
      case '243150007':
        return ServiceRequestOrderDetailsCodes.value243150007;
      case '59427005':
        return ServiceRequestOrderDetailsCodes.value59427005;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ServiceRequestOrderDetailsCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ServiceRequestOrderDetailsCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
