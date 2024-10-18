// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationDispense Status Codes
enum MedicationDispenseStatusCodes {
  /// Display: Preparation
  /// Definition: The core event has not started yet, but some staging activities have begun (e.g. initial compounding or packaging of medication). Preparation stages may be tracked for billing purposes.
  preparation('preparation'),

  /// Display: In Progress
  /// Definition: The dispensed product is ready for pickup.
  in_progress('in-progress'),

  /// Display: Cancelled
  /// Definition: The dispensed product was not and will never be picked up by the patient.
  cancelled('cancelled'),

  /// Display: On Hold
  /// Definition: The dispense process is paused while waiting for an external event to reactivate the dispense. For example, new stock has arrived or the prescriber has called.
  on_hold('on-hold'),

  /// Display: Completed
  /// Definition: The dispensed product has been picked up.
  completed('completed'),

  /// Display: Entered in Error
  /// Definition: The dispense was entered in error and therefore nullified.
  entered_in_error('entered-in-error'),

  /// Display: Stopped
  /// Definition: Actions implied by the dispense have been permanently halted, before all of them occurred.
  stopped('stopped'),

  /// Display: Declined
  /// Definition: The dispense was declined and not performed.
  declined('declined'),

  /// Display: Unknown
  /// Definition: The authoring system does not know which of the status values applies for this medication dispense. Note: this concept is not to be used for other - one of the listed statuses is presumed to apply, it's just now known which one.
  unknown('unknown'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MedicationDispenseStatusCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MedicationDispenseStatusCodes] instances.
  static MedicationDispenseStatusCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationDispenseStatusCodes.elementOnly.withElement(element);
    }
    return MedicationDispenseStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MedicationDispenseStatusCodes withElement(Element? newElement) {
    return MedicationDispenseStatusCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
