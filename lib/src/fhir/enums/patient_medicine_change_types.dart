// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example Item Flags for the List Resource. In this case, these are the kind of flags that would be used on a medication list at the end of a consultation.
enum PatientMedicineChangeTypes {
  /// Display: Unchanged
  /// Definition: No change has been made to the status of this medicine item.
  value01('01'),

  /// Display: Changed
  /// Definition: The medicine item has changed. The change may be described in an extension (not defined yet)
  value02('02'),

  /// Display: Cancelled
  /// Definition: The prescription for this medicine item was cancelled by an authorized health care provider. The patient may be advised to complete the course of the prescribed medicine. This advice is a clinical decision made based on assessment of the patient's clinical condition.
  value03('03'),

  /// Display: Prescribed
  /// Definition: A new medicine item has been prescribed
  value04('04'),

  /// Display: Ceased
  /// Definition: Administration of this medication item that the patient is currently taking is stopped or recommended to be stopped (i.e. instructed to be ceased by a health care provider). This cessation is anticipated to be permanent. The Change Description should describe the reason for cessation. Example uses: the medication in question is considered ineffective or has caused serious adverse effects. This value applies both to the cessation of a medication that is prescribed by another healthcare provider or patient self-administration of OTC medicines.
  value05('05'),

  /// Display: Suspended
  /// Definition: Administration of this medication item that the patient is currently taking is on hold, or instructed or recommended by a health care provider to be temporarily stopped, or subject to clinical review (i.e. the stop may be temporary or permanent depending on the outcome of clinical review), or temporarily suspended as a pre-requisite to certain surgical or diagnostic procedures.
  value06('06'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const PatientMedicineChangeTypes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [PatientMedicineChangeTypes] instances.
  static PatientMedicineChangeTypes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PatientMedicineChangeTypes.elementOnly.withElement(
        element,
      );
    }
    return PatientMedicineChangeTypes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  PatientMedicineChangeTypes withElement(Element? newElement) {
    return PatientMedicineChangeTypes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
