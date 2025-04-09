// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for CarePlanActivityStatus
enum CarePlanActivityStatusEnum {
  /// not-started
  notStarted,

  /// scheduled
  scheduled,

  /// in-progress
  inProgress,

  /// on-hold
  onHold,

  /// completed
  completed,

  /// cancelled
  cancelled,

  /// stopped
  stopped,

  /// unknown
  unknown,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CarePlanActivityStatusEnum.notStarted:
        return 'not-started';
      case CarePlanActivityStatusEnum.scheduled:
        return 'scheduled';
      case CarePlanActivityStatusEnum.inProgress:
        return 'in-progress';
      case CarePlanActivityStatusEnum.onHold:
        return 'on-hold';
      case CarePlanActivityStatusEnum.completed:
        return 'completed';
      case CarePlanActivityStatusEnum.cancelled:
        return 'cancelled';
      case CarePlanActivityStatusEnum.stopped:
        return 'stopped';
      case CarePlanActivityStatusEnum.unknown:
        return 'unknown';
      case CarePlanActivityStatusEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CarePlanActivityStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return CarePlanActivityStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CarePlanActivityStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'not-started':
        return CarePlanActivityStatusEnum.notStarted;
      case 'scheduled':
        return CarePlanActivityStatusEnum.scheduled;
      case 'in-progress':
        return CarePlanActivityStatusEnum.inProgress;
      case 'on-hold':
        return CarePlanActivityStatusEnum.onHold;
      case 'completed':
        return CarePlanActivityStatusEnum.completed;
      case 'cancelled':
        return CarePlanActivityStatusEnum.cancelled;
      case 'stopped':
        return CarePlanActivityStatusEnum.stopped;
      case 'unknown':
        return CarePlanActivityStatusEnum.unknown;
      case 'entered-in-error':
        return CarePlanActivityStatusEnum.enteredInError;
    }
    return null;
  }
}

/// Codes that reflect the current state of a care plan activity within its
/// overall life cycle.
class CarePlanActivityStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const CarePlanActivityStatus._({
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
  factory CarePlanActivityStatus(
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
    final valueEnum = CarePlanActivityStatusEnum.fromString(valueString);
    return CarePlanActivityStatus._(
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

  /// Factory constructor to create [CarePlanActivityStatus]
  /// from JSON.
  factory CarePlanActivityStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = CarePlanActivityStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CarePlanActivityStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CarePlanActivityStatus cannot be constructed from JSON.',
      );
    }
    return CarePlanActivityStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for CarePlanActivityStatus
  final CarePlanActivityStatusEnum? valueEnum;

  /// not_started
  static const CarePlanActivityStatus notStarted = CarePlanActivityStatus._(
    valueString: 'not-started',
    valueEnum: CarePlanActivityStatusEnum.notStarted,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Not Started',
    ),
  );

  /// scheduled
  static const CarePlanActivityStatus scheduled = CarePlanActivityStatus._(
    valueString: 'scheduled',
    valueEnum: CarePlanActivityStatusEnum.scheduled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Scheduled',
    ),
  );

  /// in_progress
  static const CarePlanActivityStatus inProgress = CarePlanActivityStatus._(
    valueString: 'in-progress',
    valueEnum: CarePlanActivityStatusEnum.inProgress,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'In Progress',
    ),
  );

  /// on_hold
  static const CarePlanActivityStatus onHold = CarePlanActivityStatus._(
    valueString: 'on-hold',
    valueEnum: CarePlanActivityStatusEnum.onHold,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'On Hold',
    ),
  );

  /// completed
  static const CarePlanActivityStatus completed = CarePlanActivityStatus._(
    valueString: 'completed',
    valueEnum: CarePlanActivityStatusEnum.completed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Completed',
    ),
  );

  /// cancelled
  static const CarePlanActivityStatus cancelled = CarePlanActivityStatus._(
    valueString: 'cancelled',
    valueEnum: CarePlanActivityStatusEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Cancelled',
    ),
  );

  /// stopped
  static const CarePlanActivityStatus stopped = CarePlanActivityStatus._(
    valueString: 'stopped',
    valueEnum: CarePlanActivityStatusEnum.stopped,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Stopped',
    ),
  );

  /// unknown
  static const CarePlanActivityStatus unknown = CarePlanActivityStatus._(
    valueString: 'unknown',
    valueEnum: CarePlanActivityStatusEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// entered_in_error
  static const CarePlanActivityStatus enteredInError = CarePlanActivityStatus._(
    valueString: 'entered-in-error',
    valueEnum: CarePlanActivityStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// List of all enum-like values
  static final List<CarePlanActivityStatus> values = [
    notStarted,
    scheduled,
    inProgress,
    onHold,
    completed,
    cancelled,
    stopped,
    unknown,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  CarePlanActivityStatus withElement(Element? newElement) {
    return CarePlanActivityStatus._(
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
  CarePlanActivityStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  CarePlanActivityStatusCopyWithImpl<CarePlanActivityStatus> get copyWith =>
      CarePlanActivityStatusCopyWithImpl<CarePlanActivityStatus>(
        this,
        (v) => v as CarePlanActivityStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class CarePlanActivityStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  CarePlanActivityStatusCopyWithImpl(super._value, super._then);

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
      CarePlanActivityStatus(
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
