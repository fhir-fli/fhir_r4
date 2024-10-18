// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationAdministration Status Codes
enum MedicationAdministrationStatusCodes {
  /// Display: In Progress
  /// Definition: The administration has started but has not yet completed.
  in_progress('in-progress'),

  /// Display: Not Done
  /// Definition: The administration was terminated prior to any impact on the subject (though preparatory actions may have been taken)
  not_done('not-done'),

  /// Display: On Hold
  /// Definition: Actions implied by the administration have been temporarily halted, but are expected to continue later. May also be called 'suspended'.
  on_hold('on-hold'),

  /// Display: Completed
  /// Definition: All actions that are implied by the administration have occurred.
  completed('completed'),

  /// Display: Entered in Error
  /// Definition: The administration was entered in error and therefore nullified.
  entered_in_error('entered-in-error'),

  /// Display: Stopped
  /// Definition: Actions implied by the administration have been permanently halted, before all of them occurred.
  stopped('stopped'),

  /// Display: Unknown
  /// Definition: The authoring system does not know which of the status values currently applies for this request. Note: This concept is not to be used for 'other' - one of the listed statuses is presumed to apply, it's just not known which one.
  unknown('unknown'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MedicationAdministrationStatusCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MedicationAdministrationStatusCodes] instances.
  static MedicationAdministrationStatusCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationAdministrationStatusCodes.elementOnly
          .withElement(element);
    }
    return MedicationAdministrationStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MedicationAdministrationStatusCodes withElement(Element? newElement) {
    return MedicationAdministrationStatusCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
