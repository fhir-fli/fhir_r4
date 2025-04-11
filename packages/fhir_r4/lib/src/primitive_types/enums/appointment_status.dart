// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AppointmentStatus
enum AppointmentStatusEnum {
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
      case AppointmentStatusEnum.proposed:
        return 'proposed';
      case AppointmentStatusEnum.pending:
        return 'pending';
      case AppointmentStatusEnum.booked:
        return 'booked';
      case AppointmentStatusEnum.arrived:
        return 'arrived';
      case AppointmentStatusEnum.fulfilled:
        return 'fulfilled';
      case AppointmentStatusEnum.cancelled:
        return 'cancelled';
      case AppointmentStatusEnum.noshow:
        return 'noshow';
      case AppointmentStatusEnum.enteredInError:
        return 'entered-in-error';
      case AppointmentStatusEnum.checkedIn:
        return 'checked-in';
      case AppointmentStatusEnum.waitlist:
        return 'waitlist';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AppointmentStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return AppointmentStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AppointmentStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'proposed':
        return AppointmentStatusEnum.proposed;
      case 'pending':
        return AppointmentStatusEnum.pending;
      case 'booked':
        return AppointmentStatusEnum.booked;
      case 'arrived':
        return AppointmentStatusEnum.arrived;
      case 'fulfilled':
        return AppointmentStatusEnum.fulfilled;
      case 'cancelled':
        return AppointmentStatusEnum.cancelled;
      case 'noshow':
        return AppointmentStatusEnum.noshow;
      case 'entered-in-error':
        return AppointmentStatusEnum.enteredInError;
      case 'checked-in':
        return AppointmentStatusEnum.checkedIn;
      case 'waitlist':
        return AppointmentStatusEnum.waitlist;
    }
    return null;
  }
}

/// The free/busy status of an appointment.
class AppointmentStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const AppointmentStatus._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
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
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = AppointmentStatusEnum.fromString(valueString);
    return AppointmentStatus._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [AppointmentStatus]
  /// from JSON.
  factory AppointmentStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = AppointmentStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AppointmentStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AppointmentStatus cannot be constructed from JSON.',
      );
    }
    return AppointmentStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for AppointmentStatus
  final AppointmentStatusEnum? valueEnum;

  /// proposed
  static const AppointmentStatus proposed = AppointmentStatus._(
    valueString: 'proposed',
    valueEnum: AppointmentStatusEnum.proposed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Proposed',
    ),
  );

  /// pending
  static const AppointmentStatus pending = AppointmentStatus._(
    valueString: 'pending',
    valueEnum: AppointmentStatusEnum.pending,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Pending',
    ),
  );

  /// booked
  static const AppointmentStatus booked = AppointmentStatus._(
    valueString: 'booked',
    valueEnum: AppointmentStatusEnum.booked,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Booked',
    ),
  );

  /// arrived
  static const AppointmentStatus arrived = AppointmentStatus._(
    valueString: 'arrived',
    valueEnum: AppointmentStatusEnum.arrived,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Arrived',
    ),
  );

  /// fulfilled
  static const AppointmentStatus fulfilled = AppointmentStatus._(
    valueString: 'fulfilled',
    valueEnum: AppointmentStatusEnum.fulfilled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Fulfilled',
    ),
  );

  /// cancelled
  static const AppointmentStatus cancelled = AppointmentStatus._(
    valueString: 'cancelled',
    valueEnum: AppointmentStatusEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Cancelled',
    ),
  );

  /// noshow
  static const AppointmentStatus noshow = AppointmentStatus._(
    valueString: 'noshow',
    valueEnum: AppointmentStatusEnum.noshow,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'No Show',
    ),
  );

  /// entered_in_error
  static const AppointmentStatus enteredInError = AppointmentStatus._(
    valueString: 'entered-in-error',
    valueEnum: AppointmentStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in error',
    ),
  );

  /// checked_in
  static const AppointmentStatus checkedIn = AppointmentStatus._(
    valueString: 'checked-in',
    valueEnum: AppointmentStatusEnum.checkedIn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Checked In',
    ),
  );

  /// waitlist
  static const AppointmentStatus waitlist = AppointmentStatus._(
    valueString: 'waitlist',
    valueEnum: AppointmentStatusEnum.waitlist,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/appointmentstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Waitlisted',
    ),
  );

  /// List of all enum-like values
  static final List<AppointmentStatus> values = [
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

  @override
  AppointmentStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  AppointmentStatusCopyWithImpl<AppointmentStatus> get copyWith =>
      AppointmentStatusCopyWithImpl<AppointmentStatus>(
        this,
        (v) => v as AppointmentStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class AppointmentStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  AppointmentStatusCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      AppointmentStatus(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
