import 'package:json_annotation/json_annotation.dart';

/// Medication Status Codes
enum MedicationUsageCategoryCodes {
  /// Display: Inpatient
  /// Definition: Includes orders for medications to be administered or consumed in an inpatient or acute care setting
  @JsonValue('inpatient')
  inpatient,

  /// Display: Outpatient
  /// Definition: Includes orders for medications to be administered or consumed in an outpatient setting (for example, Emergency Department, Outpatient Clinic, Outpatient Surgery, Doctor's office)
  @JsonValue('outpatient')
  outpatient,

  /// Display: Community
  /// Definition: Includes orders for medications to be administered or consumed by the patient in their home (this would include long term care or nursing homes, hospices, etc.).
  @JsonValue('community')
  community,

  /// Display: Patient Specified
  /// Definition: Includes statements about medication use, including over the counter medication, provided by the patient, agent or another provider
  @JsonValue('patientspecified')
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

  String toJson() => toString();
  MedicationUsageCategoryCodes fromString(String str) {
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

  MedicationUsageCategoryCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
