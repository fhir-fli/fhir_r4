import 'package:json_annotation/json_annotation.dart';

/// MedicationRequest Category Codes
enum MedicationRequestCategoryCodes {
  /// Display: Inpatient
  /// Definition: Includes requests for medications to be administered or consumed in an inpatient or acute care setting
  @JsonValue('inpatient')
  inpatient,
  /// Display: Outpatient
  /// Definition: Includes requests for medications to be administered or consumed in an outpatient setting (for example, Emergency Department, Outpatient Clinic, Outpatient Surgery, Doctor's office)
  @JsonValue('outpatient')
  outpatient,
  /// Display: Community
  /// Definition: Includes requests for medications to be administered or consumed by the patient in their home (this would include long term care or nursing homes, hospices, etc.)
  @JsonValue('community')
  community,
  /// Display: Discharge
  /// Definition: Includes requests for medications created when the patient is being released from a facility
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
  MedicationRequestCategoryCodes fromString(String str) {
    switch(str) {
      case 'inpatient': return MedicationRequestCategoryCodes.inpatient;
      case 'outpatient': return MedicationRequestCategoryCodes.outpatient;
      case 'community': return MedicationRequestCategoryCodes.community;
      case 'discharge': return MedicationRequestCategoryCodes.discharge;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 MedicationRequestCategoryCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

