// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The free/busy status of an appointment.
class AppointmentStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AppointmentStatus._(super.value, [super.element]);

  /// Factory constructor to create [AppointmentStatus] from JSON.
  factory AppointmentStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AppointmentStatus.elementOnly.withElement(element);
    }
    return AppointmentStatus._(value, element);
  }

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

  /// Clones the current instance
  @override
  AppointmentStatus clone() => AppointmentStatus._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  AppointmentStatus setElement(
    String name,
    dynamic elementValue,
  ) {
    return AppointmentStatus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  AppointmentStatus withElement(Element? newElement) {
    return AppointmentStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  AppointmentStatus copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return AppointmentStatus._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
