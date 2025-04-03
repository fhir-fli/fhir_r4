// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The free/busy status of an appointment.
class AppointmentStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  AppointmentStatus._({
    required super.valueString,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory AppointmentStatus(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return AppointmentStatus._(
      valueString: valueString,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [AppointmentStatus] with element only
  factory AppointmentStatus.empty() => AppointmentStatus._(valueString: '');

  /// Factory constructor to create [AppointmentStatus]
  /// from JSON.
  factory AppointmentStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AppointmentStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AppointmentStatus cannot be constructed from JSON.',
      );
    }
    return AppointmentStatus._(
      valueString: value,
      element: element,
    );
  }

  /// proposed
  static final AppointmentStatus proposed = AppointmentStatus._(
    valueString: 'proposed',
    system: 'http://hl7.org/fhir/ValueSet/appointmentstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Proposed'.toFhirString,
  );

  /// pending
  static final AppointmentStatus pending = AppointmentStatus._(
    valueString: 'pending',
    system: 'http://hl7.org/fhir/ValueSet/appointmentstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Pending'.toFhirString,
  );

  /// booked
  static final AppointmentStatus booked = AppointmentStatus._(
    valueString: 'booked',
    system: 'http://hl7.org/fhir/ValueSet/appointmentstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Booked'.toFhirString,
  );

  /// arrived
  static final AppointmentStatus arrived = AppointmentStatus._(
    valueString: 'arrived',
    system: 'http://hl7.org/fhir/ValueSet/appointmentstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Arrived'.toFhirString,
  );

  /// fulfilled
  static final AppointmentStatus fulfilled = AppointmentStatus._(
    valueString: 'fulfilled',
    system: 'http://hl7.org/fhir/ValueSet/appointmentstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Fulfilled'.toFhirString,
  );

  /// cancelled
  static final AppointmentStatus cancelled = AppointmentStatus._(
    valueString: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/appointmentstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Cancelled'.toFhirString,
  );

  /// noshow
  static final AppointmentStatus noshow = AppointmentStatus._(
    valueString: 'noshow',
    system: 'http://hl7.org/fhir/ValueSet/appointmentstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'No Show'.toFhirString,
  );

  /// entered_in_error
  static final AppointmentStatus entered_in_error = AppointmentStatus._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/appointmentstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in error'.toFhirString,
  );

  /// checked_in
  static final AppointmentStatus checked_in = AppointmentStatus._(
    valueString: 'checked-in',
    system: 'http://hl7.org/fhir/ValueSet/appointmentstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Checked In'.toFhirString,
  );

  /// waitlist
  static final AppointmentStatus waitlist = AppointmentStatus._(
    valueString: 'waitlist',
    system: 'http://hl7.org/fhir/ValueSet/appointmentstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Waitlisted'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final AppointmentStatus elementOnly =
      AppointmentStatus._(valueString: '');

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
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AppointmentStatus withElement(Element? newElement) {
    return AppointmentStatus._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  AppointmentStatus copyWith({
    dynamic newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for AppointmentStatus: $newValue',
      );
    }
    return AppointmentStatus._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
