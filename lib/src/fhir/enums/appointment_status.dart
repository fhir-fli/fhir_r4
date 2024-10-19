// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The free/busy status of an appointment.
@Entity()
class AppointmentStatus extends FhirCode {
  /// Factory constructor to create [AppointmentStatus] from JSON.
  factory AppointmentStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AppointmentStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return AppointmentStatus._(value, element);
    }
    throw ArgumentError(
      'AppointmentStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// proposed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentStatus.proposed([this.element])
      : dbValue = 'proposed',
        super('proposed', element);

  /// pending
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentStatus.pending([this.element])
      : dbValue = 'pending',
        super('pending', element);

  /// booked
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentStatus.booked([this.element])
      : dbValue = 'booked',
        super('booked', element);

  /// arrived
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentStatus.arrived([this.element])
      : dbValue = 'arrived',
        super('arrived', element);

  /// fulfilled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentStatus.fulfilled([this.element])
      : dbValue = 'fulfilled',
        super('fulfilled', element);

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentStatus.cancelled([this.element])
      : dbValue = 'cancelled',
        super('cancelled', element);

  /// noshow
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentStatus.noshow([this.element])
      : dbValue = 'noshow',
        super('noshow', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// checked_in
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentStatus.checked_in([this.element])
      : dbValue = 'checked-in',
        super('checked-in', element);

  /// waitlist
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentStatus.waitlist([this.element])
      : dbValue = 'waitlist',
        super('waitlist', element);

  /// For instances where an Element is present but not value

  AppointmentStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AppointmentStatus._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'proposed',
    'pending',
    'booked',
    'arrived',
    'fulfilled',
    'cancelled',
    'noshow',
    'entered-in-error',
    'checked-in',
    'waitlist',
  ];

  /// Returns the enum value with an element attached
  AppointmentStatus withElement(Element? newElement) {
    return AppointmentStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AppointmentStatus.$value';
}
