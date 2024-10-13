/// MedicationDispense Category Codes
enum MedicationDispenseCategoryCodes {
  /// Display: Inpatient
  /// Definition: Includes dispenses for medications to be administered or consumed in an inpatient or acute care setting.
  inpatient,

  /// Display: Outpatient
  /// Definition: Includes dispenses for medications to be administered or consumed in an outpatient setting (for example, Emergency Department, Outpatient Clinic, Outpatient Surgery, Doctor's office).
  outpatient,

  /// Display: Community
  /// Definition: Includes dispenses for medications to be administered or consumed by the patient in their home (this would include long term care or nursing homes, hospices, etc.).
  community,

  /// Display: Discharge
  /// Definition: Includes dispenses for medications created when the patient is being released from a facility.
  discharge,
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
      case discharge:
        return 'discharge';
    }
  }

  /// Returns a [String] from a [MedicationDispenseCategoryCodes] enum.
  String toJson() => toString();

  /// Returns a [MedicationDispenseCategoryCodes] from a [String] enum.
  static MedicationDispenseCategoryCodes fromString(String str) {
    switch (str) {
      case 'inpatient':
        return MedicationDispenseCategoryCodes.inpatient;
      case 'outpatient':
        return MedicationDispenseCategoryCodes.outpatient;
      case 'community':
        return MedicationDispenseCategoryCodes.community;
      case 'discharge':
        return MedicationDispenseCategoryCodes.discharge;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [MedicationDispenseCategoryCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static MedicationDispenseCategoryCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
