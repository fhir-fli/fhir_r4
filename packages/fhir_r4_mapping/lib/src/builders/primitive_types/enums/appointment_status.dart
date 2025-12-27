part of '../primitive_types.dart';

/// Actual enum for AppointmentStatus
enum AppointmentStatusBuilderEnum {
  /// proposed
  proposed,

  /// pending
  pending,

  /// booked
  booked,

  /// arrived
  arrived,

  /// fulfilled
  fulfilled,

  /// cancelled
  cancelled,

  /// noshow
  noshow,

  /// entered-in-error
  enteredInError,

  /// checked-in
  checkedIn,

  /// waitlist
  waitlist,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AppointmentStatusBuilderEnum.proposed:
        return 'proposed';
      case AppointmentStatusBuilderEnum.pending:
        return 'pending';
      case AppointmentStatusBuilderEnum.booked:
        return 'booked';
      case AppointmentStatusBuilderEnum.arrived:
        return 'arrived';
      case AppointmentStatusBuilderEnum.fulfilled:
        return 'fulfilled';
      case AppointmentStatusBuilderEnum.cancelled:
        return 'cancelled';
      case AppointmentStatusBuilderEnum.noshow:
        return 'noshow';
      case AppointmentStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case AppointmentStatusBuilderEnum.checkedIn:
        return 'checked-in';
      case AppointmentStatusBuilderEnum.waitlist:
        return 'waitlist';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AppointmentStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AppointmentStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AppointmentStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'proposed':
        return AppointmentStatusBuilderEnum.proposed;
      case 'pending':
        return AppointmentStatusBuilderEnum.pending;
      case 'booked':
        return AppointmentStatusBuilderEnum.booked;
      case 'arrived':
        return AppointmentStatusBuilderEnum.arrived;
      case 'fulfilled':
        return AppointmentStatusBuilderEnum.fulfilled;
      case 'cancelled':
        return AppointmentStatusBuilderEnum.cancelled;
      case 'noshow':
        return AppointmentStatusBuilderEnum.noshow;
      case 'entered-in-error':
        return AppointmentStatusBuilderEnum.enteredInError;
      case 'checked-in':
        return AppointmentStatusBuilderEnum.checkedIn;
      case 'waitlist':
        return AppointmentStatusBuilderEnum.waitlist;
    }
    return null;
  }
}

/// The free/busy status of an appointment.
class AppointmentStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AppointmentStatusBuilder._({
    required super.valueString,
    this.valueEnum,
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
    final valueEnum = AppointmentStatusBuilderEnum.fromString(
      valueString,
    );
    return AppointmentStatusBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [AppointmentStatusBuilder]
  /// with element only
  factory AppointmentStatusBuilder.empty() =>
      AppointmentStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AppointmentStatusBuilder] from JSON.
  factory AppointmentStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AppointmentStatusBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for AppointmentStatusBuilder
  final AppointmentStatusBuilderEnum? valueEnum;

  /// proposed
  static AppointmentStatusBuilder proposed = AppointmentStatusBuilder._(
    valueString: 'proposed',
    valueEnum: AppointmentStatusBuilderEnum.proposed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Proposed',
    ),
  );

  /// pending
  static AppointmentStatusBuilder pending = AppointmentStatusBuilder._(
    valueString: 'pending',
    valueEnum: AppointmentStatusBuilderEnum.pending,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Pending',
    ),
  );

  /// booked
  static AppointmentStatusBuilder booked = AppointmentStatusBuilder._(
    valueString: 'booked',
    valueEnum: AppointmentStatusBuilderEnum.booked,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Booked',
    ),
  );

  /// arrived
  static AppointmentStatusBuilder arrived = AppointmentStatusBuilder._(
    valueString: 'arrived',
    valueEnum: AppointmentStatusBuilderEnum.arrived,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Arrived',
    ),
  );

  /// fulfilled
  static AppointmentStatusBuilder fulfilled = AppointmentStatusBuilder._(
    valueString: 'fulfilled',
    valueEnum: AppointmentStatusBuilderEnum.fulfilled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Fulfilled',
    ),
  );

  /// cancelled
  static AppointmentStatusBuilder cancelled = AppointmentStatusBuilder._(
    valueString: 'cancelled',
    valueEnum: AppointmentStatusBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Cancelled',
    ),
  );

  /// noshow
  static AppointmentStatusBuilder noshow = AppointmentStatusBuilder._(
    valueString: 'noshow',
    valueEnum: AppointmentStatusBuilderEnum.noshow,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'No Show',
    ),
  );

  /// entered_in_error
  static AppointmentStatusBuilder enteredInError = AppointmentStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: AppointmentStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in error',
    ),
  );

  /// checked_in
  static AppointmentStatusBuilder checkedIn = AppointmentStatusBuilder._(
    valueString: 'checked-in',
    valueEnum: AppointmentStatusBuilderEnum.checkedIn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Checked In',
    ),
  );

  /// waitlist
  static AppointmentStatusBuilder waitlist = AppointmentStatusBuilder._(
    valueString: 'waitlist',
    valueEnum: AppointmentStatusBuilderEnum.waitlist,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Waitlisted',
    ),
  );

  /// For instances where an Element is present but not value
  static AppointmentStatusBuilder elementOnly = AppointmentStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<AppointmentStatusBuilder> values = [
    proposed,
    pending,
    booked,
    arrived,
    fulfilled,
    cancelled,
    noshow,
    enteredInError,
    checkedIn,
    waitlist,
  ];

  /// Returns the enum value with an element attached
  AppointmentStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AppointmentStatusBuilder._(
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
}
