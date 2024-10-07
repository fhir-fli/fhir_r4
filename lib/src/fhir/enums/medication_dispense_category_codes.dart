import 'package:json_annotation/json_annotation.dart';

/// MedicationDispense Category Codes
enum MedicationDispenseCategoryCodes {
  /// Display: Inpatient
  /// Definition: Includes dispenses for medications to be administered or consumed in an inpatient or acute care setting.
  @JsonValue('inpatient')
  inpatient,
  /// Display: Outpatient
  /// Definition: Includes dispenses for medications to be administered or consumed in an outpatient setting (for example, Emergency Department, Outpatient Clinic, Outpatient Surgery, Doctor's office).
  @JsonValue('outpatient')
  outpatient,
  /// Display: Community
  /// Definition: Includes dispenses for medications to be administered or consumed by the patient in their home (this would include long term care or nursing homes, hospices, etc.).
  @JsonValue('community')
  community,
  /// Display: Discharge
  /// Definition: Includes dispenses for medications created when the patient is being released from a facility.
  @JsonValue('discharge')
  discharge,
;

@override
  String toString() {
      switch(this) {
        case inpatient: return 'inpatient';
        case outpatient: return 'outpatient';
        case community: return 'community';
        case discharge: return 'discharge';
      }
      }
String toJson() => toString();
  MedicationDispenseCategoryCodes fromString(String str) {
    switch(str) {
      case 'inpatient': return MedicationDispenseCategoryCodes.inpatient;
      case 'outpatient': return MedicationDispenseCategoryCodes.outpatient;
      case 'community': return MedicationDispenseCategoryCodes.community;
      case 'discharge': return MedicationDispenseCategoryCodes.discharge;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 MedicationDispenseCategoryCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

