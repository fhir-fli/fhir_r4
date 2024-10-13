/// Medication Status Codes
enum MedicationUsageCategoryCodes {
  /// Display: Inpatient
  /// Definition: Includes orders for medications to be administered or consumed in an inpatient or acute care setting
  inpatient,

  /// Display: Outpatient
  /// Definition: Includes orders for medications to be administered or consumed in an outpatient setting (for example, Emergency Department, Outpatient Clinic, Outpatient Surgery, Doctor's office)
  outpatient,

  /// Display: Community
  /// Definition: Includes orders for medications to be administered or consumed by the patient in their home (this would include long term care or nursing homes, hospices, etc.).
  community,

  /// Display: Patient Specified
  /// Definition: Includes statements about medication use, including over the counter medication, provided by the patient, agent or another provider
  patientspecified,
  ;

  @override
  String toString() {
    switch (this) {
      case inpatient:
        return 'inpatient';
      case outpatient:
        return 'outpatient';
      case community:
        return 'community';
      case patientspecified:
        return 'patientspecified';
    }
  }

  /// Returns a [String] from a [MedicationUsageCategoryCodes] enum.
  String toJson() => toString();

  /// Returns a [MedicationUsageCategoryCodes] from a [String] enum.
  static MedicationUsageCategoryCodes fromString(String str) {
    switch (str) {
      case 'inpatient':
        return MedicationUsageCategoryCodes.inpatient;
      case 'outpatient':
        return MedicationUsageCategoryCodes.outpatient;
      case 'community':
        return MedicationUsageCategoryCodes.community;
      case 'patientspecified':
        return MedicationUsageCategoryCodes.patientspecified;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [MedicationUsageCategoryCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static MedicationUsageCategoryCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
