// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for CarePlanActivityStatus
enum CarePlanActivityStatusBuilderEnum {
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
      case CarePlanActivityStatusBuilderEnum.notStarted:
        return 'not-started';
      case CarePlanActivityStatusBuilderEnum.scheduled:
        return 'scheduled';
      case CarePlanActivityStatusBuilderEnum.inProgress:
        return 'in-progress';
      case CarePlanActivityStatusBuilderEnum.onHold:
        return 'on-hold';
      case CarePlanActivityStatusBuilderEnum.completed:
        return 'completed';
      case CarePlanActivityStatusBuilderEnum.cancelled:
        return 'cancelled';
      case CarePlanActivityStatusBuilderEnum.stopped:
        return 'stopped';
      case CarePlanActivityStatusBuilderEnum.unknown:
        return 'unknown';
      case CarePlanActivityStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CarePlanActivityStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return CarePlanActivityStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CarePlanActivityStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'not-started':
        return CarePlanActivityStatusBuilderEnum.notStarted;
      case 'scheduled':
        return CarePlanActivityStatusBuilderEnum.scheduled;
      case 'in-progress':
        return CarePlanActivityStatusBuilderEnum.inProgress;
      case 'on-hold':
        return CarePlanActivityStatusBuilderEnum.onHold;
      case 'completed':
        return CarePlanActivityStatusBuilderEnum.completed;
      case 'cancelled':
        return CarePlanActivityStatusBuilderEnum.cancelled;
      case 'stopped':
        return CarePlanActivityStatusBuilderEnum.stopped;
      case 'unknown':
        return CarePlanActivityStatusBuilderEnum.unknown;
      case 'entered-in-error':
        return CarePlanActivityStatusBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// Codes that reflect the current state of a care plan activity within its
/// overall life cycle.
class CarePlanActivityStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CarePlanActivityStatusBuilder._({
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
  factory CarePlanActivityStatusBuilder(
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
    final valueEnum = CarePlanActivityStatusBuilderEnum.fromString(
      valueString,
    );
    return CarePlanActivityStatusBuilder._(
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

  /// Create empty [CarePlanActivityStatusBuilder]
  /// with element only
  factory CarePlanActivityStatusBuilder.empty() =>
      CarePlanActivityStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [CarePlanActivityStatusBuilder] from JSON.
  factory CarePlanActivityStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CarePlanActivityStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CarePlanActivityStatusBuilder cannot be constructed from JSON.',
      );
    }
    return CarePlanActivityStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for CarePlanActivityStatusBuilder
  final CarePlanActivityStatusBuilderEnum? valueEnum;

  /// not_started
  static CarePlanActivityStatusBuilder notStarted =
      CarePlanActivityStatusBuilder._(
    valueString: 'not-started',
    valueEnum: CarePlanActivityStatusBuilderEnum.notStarted,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Started',
    ),
  );

  /// scheduled
  static CarePlanActivityStatusBuilder scheduled =
      CarePlanActivityStatusBuilder._(
    valueString: 'scheduled',
    valueEnum: CarePlanActivityStatusBuilderEnum.scheduled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Scheduled',
    ),
  );

  /// in_progress
  static CarePlanActivityStatusBuilder inProgress =
      CarePlanActivityStatusBuilder._(
    valueString: 'in-progress',
    valueEnum: CarePlanActivityStatusBuilderEnum.inProgress,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'In Progress',
    ),
  );

  /// on_hold
  static CarePlanActivityStatusBuilder onHold = CarePlanActivityStatusBuilder._(
    valueString: 'on-hold',
    valueEnum: CarePlanActivityStatusBuilderEnum.onHold,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'On Hold',
    ),
  );

  /// completed
  static CarePlanActivityStatusBuilder completed =
      CarePlanActivityStatusBuilder._(
    valueString: 'completed',
    valueEnum: CarePlanActivityStatusBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// cancelled
  static CarePlanActivityStatusBuilder cancelled =
      CarePlanActivityStatusBuilder._(
    valueString: 'cancelled',
    valueEnum: CarePlanActivityStatusBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Cancelled',
    ),
  );

  /// stopped
  static CarePlanActivityStatusBuilder stopped =
      CarePlanActivityStatusBuilder._(
    valueString: 'stopped',
    valueEnum: CarePlanActivityStatusBuilderEnum.stopped,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Stopped',
    ),
  );

  /// unknown
  static CarePlanActivityStatusBuilder unknown =
      CarePlanActivityStatusBuilder._(
    valueString: 'unknown',
    valueEnum: CarePlanActivityStatusBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// entered_in_error
  static CarePlanActivityStatusBuilder enteredInError =
      CarePlanActivityStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: CarePlanActivityStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// For instances where an Element is present but not value
  static CarePlanActivityStatusBuilder elementOnly =
      CarePlanActivityStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<CarePlanActivityStatusBuilder> values = [
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
  CarePlanActivityStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return CarePlanActivityStatusBuilder._(
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
