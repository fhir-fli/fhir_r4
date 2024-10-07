import 'package:json_annotation/json_annotation.dart';

/// MedicationAdministration Category Codes
enum MedicationAdministrationCategoryCodes {
  /// Display: Inpatient
  /// Definition: Includes administrations in an inpatient or acute care setting
  @JsonValue('inpatient')
  inpatient,
  /// Display: Outpatient
  /// Definition: Includes administrations in an outpatient setting (for example, Emergency Department, Outpatient Clinic, Outpatient Surgery, Doctor's office)
  @JsonValue('outpatient')
  outpatient,
  /// Display: Community
  /// Definition: Includes administrations by the patient in their home (this would include long term care or nursing homes, hospices, etc.)
  @JsonValue('community')
  community,
;

@override
  String toString() {
      switch(this) {
        case inpatient: return 'inpatient';
        case outpatient: return 'outpatient';
        case community: return 'community';
      }
      }
String toJson() => toString();
  MedicationAdministrationCategoryCodes fromString(String str) {
    switch(str) {
      case 'inpatient': return MedicationAdministrationCategoryCodes.inpatient;
      case 'outpatient': return MedicationAdministrationCategoryCodes.outpatient;
      case 'community': return MedicationAdministrationCategoryCodes.community;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 MedicationAdministrationCategoryCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

