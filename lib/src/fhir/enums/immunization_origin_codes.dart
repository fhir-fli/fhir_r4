/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the source of the data when the report of the immunization event is not based on information from the person, entity or organization who administered the vaccine. This value set is provided as a suggestive example.
enum ImmunizationOriginCodes {
  /// Display: Other Provider
  /// Definition: The data for the immunization event originated with another provider.
  provider,

  /// Display: Written Record
  /// Definition: The data for the immunization event originated with a written record for the patient.
  record,

  /// Display: Parent/Guardian/Patient Recall
  /// Definition: The data for the immunization event originated from the recollection of the patient or parent/guardian of the patient.
  recall,

  /// Display: School Record
  /// Definition: The data for the immunization event originated with a school record for the patient.
  school,

  /// Display: Jurisdictional IIS
  /// Definition: The data for the immunization event originated with an immunization information system (IIS) or registry operating within the jurisdiction.
  jurisdiction,
  ;

  @override
  String toString() {
    switch (this) {
      case provider:
        return 'provider';
      case record:
        return 'record';
      case recall:
        return 'recall';
      case school:
        return 'school';
      case jurisdiction:
        return 'jurisdiction';
    }
  }

  /// Returns a [String] from a [ImmunizationOriginCodes] enum.
  String toJson() => toString();

  /// Returns a [ImmunizationOriginCodes] from a [String] enum.
  static ImmunizationOriginCodes fromString(String str) {
    switch (str) {
      case 'provider':
        return ImmunizationOriginCodes.provider;
      case 'record':
        return ImmunizationOriginCodes.record;
      case 'recall':
        return ImmunizationOriginCodes.recall;
      case 'school':
        return ImmunizationOriginCodes.school;
      case 'jurisdiction':
        return ImmunizationOriginCodes.jurisdiction;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ImmunizationOriginCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ImmunizationOriginCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
