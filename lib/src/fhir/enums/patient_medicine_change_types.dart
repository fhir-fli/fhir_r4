import 'package:json_annotation/json_annotation.dart';

/// Example Item Flags for the List Resource. In this case, these are the kind of flags that would be used on a medication list at the end of a consultation.
enum PatientMedicineChangeTypes {
  /// Display: Unchanged
  /// Definition: No change has been made to the status of this medicine item.
  @JsonValue('01')
  value01,

  /// Display: Changed
  /// Definition: The medicine item has changed. The change may be described in an extension (not defined yet)
  @JsonValue('02')
  value02,

  /// Display: Cancelled
  /// Definition: The prescription for this medicine item was cancelled by an authorized health care provider. The patient may be advised to complete the course of the prescribed medicine. This advice is a clinical decision made based on assessment of the patient's clinical condition.
  @JsonValue('03')
  value03,

  /// Display: Prescribed
  /// Definition: A new medicine item has been prescribed
  @JsonValue('04')
  value04,

  /// Display: Ceased
  /// Definition: Administration of this medication item that the patient is currently taking is stopped or recommended to be stopped (i.e. instructed to be ceased by a health care provider). This cessation is anticipated to be permanent. The Change Description should describe the reason for cessation. Example uses: the medication in question is considered ineffective or has caused serious adverse effects. This value applies both to the cessation of a medication that is prescribed by another healthcare provider or patient self-administration of OTC medicines.
  @JsonValue('05')
  value05,

  /// Display: Suspended
  /// Definition: Administration of this medication item that the patient is currently taking is on hold, or instructed or recommended by a health care provider to be temporarily stopped, or subject to clinical review (i.e. the stop may be temporary or permanent depending on the outcome of clinical review), or temporarily suspended as a pre-requisite to certain surgical or diagnostic procedures.
  @JsonValue('06')
  value06,
  ;

  @override
  String toString() {
    switch (this) {
      case value01:
        return '01';
      case value02:
        return '02';
      case value03:
        return '03';
      case value04:
        return '04';
      case value05:
        return '05';
      case value06:
        return '06';
    }
  }

  String toJson() => toString();
  PatientMedicineChangeTypes fromString(String str) {
    switch (str) {
      case '01':
        return PatientMedicineChangeTypes.value01;
      case '02':
        return PatientMedicineChangeTypes.value02;
      case '03':
        return PatientMedicineChangeTypes.value03;
      case '04':
        return PatientMedicineChangeTypes.value04;
      case '05':
        return PatientMedicineChangeTypes.value05;
      case '06':
        return PatientMedicineChangeTypes.value06;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  PatientMedicineChangeTypes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
