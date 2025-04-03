// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The free/busy status of an appointment.
class AppointmentStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AppointmentStatusBuilder._({
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
  factory AppointmentStatusBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    return AppointmentStatusBuilder._(
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

  /// Create empty [AppointmentStatusBuilder] with element only
  factory AppointmentStatusBuilder.empty() =>
      AppointmentStatusBuilder._(valueString: '');

  /// Factory constructor to create [AppointmentStatusBuilder]
  /// from JSON.
  factory AppointmentStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AppointmentStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AppointmentStatusBuilder cannot be constructed from JSON.',
      );
    }
    return AppointmentStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// proposed
  static AppointmentStatusBuilder proposed = AppointmentStatusBuilder._(
    valueString: 'proposed',
    system: 'http://hl7.org/fhir/ValueSet/appointmentstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Proposed'.toFhirStringBuilder,
  );

  /// pending
  static AppointmentStatusBuilder pending = AppointmentStatusBuilder._(
    valueString: 'pending',
    system: 'http://hl7.org/fhir/ValueSet/appointmentstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Pending'.toFhirStringBuilder,
  );

  /// booked
  static AppointmentStatusBuilder booked = AppointmentStatusBuilder._(
    valueString: 'booked',
    system: 'http://hl7.org/fhir/ValueSet/appointmentstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Booked'.toFhirStringBuilder,
  );

  /// arrived
  static AppointmentStatusBuilder arrived = AppointmentStatusBuilder._(
    valueString: 'arrived',
    system: 'http://hl7.org/fhir/ValueSet/appointmentstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Arrived'.toFhirStringBuilder,
  );

  /// fulfilled
  static AppointmentStatusBuilder fulfilled = AppointmentStatusBuilder._(
    valueString: 'fulfilled',
    system: 'http://hl7.org/fhir/ValueSet/appointmentstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Fulfilled'.toFhirStringBuilder,
  );

  /// cancelled
  static AppointmentStatusBuilder cancelled = AppointmentStatusBuilder._(
    valueString: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/appointmentstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Cancelled'.toFhirStringBuilder,
  );

  /// noshow
  static AppointmentStatusBuilder noshow = AppointmentStatusBuilder._(
    valueString: 'noshow',
    system: 'http://hl7.org/fhir/ValueSet/appointmentstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'No Show'.toFhirStringBuilder,
  );

  /// entered_in_error
  static AppointmentStatusBuilder entered_in_error = AppointmentStatusBuilder._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/appointmentstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in error'.toFhirStringBuilder,
  );

  /// checked_in
  static AppointmentStatusBuilder checked_in = AppointmentStatusBuilder._(
    valueString: 'checked-in',
    system: 'http://hl7.org/fhir/ValueSet/appointmentstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Checked In'.toFhirStringBuilder,
  );

  /// waitlist
  static AppointmentStatusBuilder waitlist = AppointmentStatusBuilder._(
    valueString: 'waitlist',
    system: 'http://hl7.org/fhir/ValueSet/appointmentstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Waitlisted'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static AppointmentStatusBuilder elementOnly =
      AppointmentStatusBuilder._(valueString: '');

  /// List of all enum-like values
  static List<AppointmentStatusBuilder> values = [
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
  AppointmentStatusBuilder clone() => AppointmentStatusBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  AppointmentStatusBuilder withElement(ElementBuilder? newElement) {
    return AppointmentStatusBuilder._(
        valueString: valueString, element: newElement,);
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
  AppointmentStatusBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for AppointmentStatus: $newValue');
    }
    return AppointmentStatusBuilder._(
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
