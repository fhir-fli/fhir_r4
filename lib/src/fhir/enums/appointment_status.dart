// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The free/busy status of an appointment.
@collection
class AppointmentStatus {
  /// Constructor for internal use (like enum)
  AppointmentStatus({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AppointmentStatus values
  /// proposed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentStatus proposed = AppointmentStatus(
    fhirCode: 'proposed',
  );

  /// pending
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentStatus pending = AppointmentStatus(
    fhirCode: 'pending',
  );

  /// booked
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentStatus booked = AppointmentStatus(
    fhirCode: 'booked',
  );

  /// arrived
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentStatus arrived = AppointmentStatus(
    fhirCode: 'arrived',
  );

  /// fulfilled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentStatus fulfilled = AppointmentStatus(
    fhirCode: 'fulfilled',
  );

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentStatus cancelled = AppointmentStatus(
    fhirCode: 'cancelled',
  );

  /// noshow
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentStatus noshow = AppointmentStatus(
    fhirCode: 'noshow',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentStatus entered_in_error = AppointmentStatus(
    fhirCode: 'entered-in-error',
  );

  /// checked_in
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentStatus checked_in = AppointmentStatus(
    fhirCode: 'checked-in',
  );

  /// waitlist
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentStatus waitlist = AppointmentStatus(
    fhirCode: 'waitlist',
  );

  /// For instances where an Element is present but not value

  static final AppointmentStatus elementOnly = AppointmentStatus();

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
    return AppointmentStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AppointmentStatus] from JSON.
  static AppointmentStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AppointmentStatus.elementOnly.withElement(element);
    }
    return AppointmentStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AppointmentStatus.$fhirCode';
}
