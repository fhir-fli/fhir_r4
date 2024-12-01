// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The free/busy status of an appointment.
class AppointmentStatus {
  // Private constructor for internal use (like enum)
  AppointmentStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [AppointmentStatus] from JSON.
  factory AppointmentStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AppointmentStatus.elementOnly.withElement(element);
    }
    return AppointmentStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AppointmentStatus values
  /// proposed
  static final AppointmentStatus proposed = AppointmentStatus._(
    'proposed',
  );

  /// pending
  static final AppointmentStatus pending = AppointmentStatus._(
    'pending',
  );

  /// booked
  static final AppointmentStatus booked = AppointmentStatus._(
    'booked',
  );

  /// arrived
  static final AppointmentStatus arrived = AppointmentStatus._(
    'arrived',
  );

  /// fulfilled
  static final AppointmentStatus fulfilled = AppointmentStatus._(
    'fulfilled',
  );

  /// cancelled
  static final AppointmentStatus cancelled = AppointmentStatus._(
    'cancelled',
  );

  /// noshow
  static final AppointmentStatus noshow = AppointmentStatus._(
    'noshow',
  );

  /// entered_in_error
  static final AppointmentStatus entered_in_error = AppointmentStatus._(
    'entered-in-error',
  );

  /// checked_in
  static final AppointmentStatus checked_in = AppointmentStatus._(
    'checked-in',
  );

  /// waitlist
  static final AppointmentStatus waitlist = AppointmentStatus._(
    'waitlist',
  );

  /// For instances where an Element is present but not value

  static final AppointmentStatus elementOnly = AppointmentStatus._('');

  /// List of all enum-like values
  static final List<AppointmentStatus> values = [
    proposed,
    pending,
    booked,
    arrived,
    fulfilled,
    cancelled,
    noshow,
    entered_in_error,
    checked_in,
    waitlist,
  ];

  /// Returns the enum value with an element attached
  AppointmentStatus withElement(Element? newElement) {
    return AppointmentStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
