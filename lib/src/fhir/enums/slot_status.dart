import 'package:fhir_r4/fhir_r4.dart';

/// The free/busy status of the slot.
enum SlotStatus {
  /// Display: Busy
  /// Definition: Indicates that the time interval is busy because one or more events have been scheduled for that interval.
  busy('busy'),

  /// Display: Free
  /// Definition: Indicates that the time interval is free for scheduling.
  free('free'),

  /// Display: Busy (Unavailable)
  /// Definition: Indicates that the time interval is busy and that the interval cannot be scheduled.
  busy_unavailable('busy-unavailable'),

  /// Display: Busy (Tentative)
  /// Definition: Indicates that the time interval is busy because one or more events have been tentatively scheduled for that interval.
  busy_tentative('busy-tentative'),

  /// Display: Entered in error
  /// Definition: This instance should not have been part of this patient's medical record.
  entered_in_error('entered-in-error'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SlotStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SlotStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SlotStatus.elementOnly.withElement(element);
    }
    return SlotStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SlotStatus withElement(Element? newElement) {
    return SlotStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
