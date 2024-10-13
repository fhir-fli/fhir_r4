/// MedicationAdministration Category Codes
enum MedicationAdministrationCategoryCodes {
  /// Display: Inpatient
  /// Definition: Includes administrations in an inpatient or acute care setting
  inpatient,

  /// Display: Outpatient
  /// Definition: Includes administrations in an outpatient setting (for example, Emergency Department, Outpatient Clinic, Outpatient Surgery, Doctor's office)
  outpatient,

  /// Display: Community
  /// Definition: Includes administrations by the patient in their home (this would include long term care or nursing homes, hospices, etc.)
  community,
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
    }
  }

  /// Returns a [String] from a [MedicationAdministrationCategoryCodes] enum.
  String toJson() => toString();

  /// Returns a [MedicationAdministrationCategoryCodes] from a [String] enum.
  static MedicationAdministrationCategoryCodes fromString(String str) {
    switch (str) {
      case 'inpatient':
        return MedicationAdministrationCategoryCodes.inpatient;
      case 'outpatient':
        return MedicationAdministrationCategoryCodes.outpatient;
      case 'community':
        return MedicationAdministrationCategoryCodes.community;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [MedicationAdministrationCategoryCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static MedicationAdministrationCategoryCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
