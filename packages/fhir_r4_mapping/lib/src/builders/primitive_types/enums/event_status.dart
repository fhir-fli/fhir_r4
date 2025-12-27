part of '../primitive_types.dart';

/// Actual enum for EventStatus
enum EventStatusBuilderEnum {
  /// preparation
  preparation,

  /// in-progress
  inProgress,

  /// not-done
  notDone,

  /// on-hold
  onHold,

  /// stopped
  stopped,

  /// completed
  completed,

  /// entered-in-error
  enteredInError,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case EventStatusBuilderEnum.preparation:
        return 'preparation';
      case EventStatusBuilderEnum.inProgress:
        return 'in-progress';
      case EventStatusBuilderEnum.notDone:
        return 'not-done';
      case EventStatusBuilderEnum.onHold:
        return 'on-hold';
      case EventStatusBuilderEnum.stopped:
        return 'stopped';
      case EventStatusBuilderEnum.completed:
        return 'completed';
      case EventStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case EventStatusBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EventStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return EventStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EventStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'preparation':
        return EventStatusBuilderEnum.preparation;
      case 'in-progress':
        return EventStatusBuilderEnum.inProgress;
      case 'not-done':
        return EventStatusBuilderEnum.notDone;
      case 'on-hold':
        return EventStatusBuilderEnum.onHold;
      case 'stopped':
        return EventStatusBuilderEnum.stopped;
      case 'completed':
        return EventStatusBuilderEnum.completed;
      case 'entered-in-error':
        return EventStatusBuilderEnum.enteredInError;
      case 'unknown':
        return EventStatusBuilderEnum.unknown;
    }
    return null;
  }
}

/// Codes identifying the lifecycle stage of an event.
class EventStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EventStatusBuilder._({
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
  factory EventStatusBuilder(
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
    final valueEnum = EventStatusBuilderEnum.fromString(
      valueString,
    );
    return EventStatusBuilder._(
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

  /// Create empty [EventStatusBuilder]
  /// with element only
  factory EventStatusBuilder.empty() => EventStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [EventStatusBuilder] from JSON.
  factory EventStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EventStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EventStatusBuilder cannot be constructed from JSON.',
      );
    }
    return EventStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for EventStatusBuilder
  final EventStatusBuilderEnum? valueEnum;

  /// preparation
  static EventStatusBuilder preparation = EventStatusBuilder._(
    valueString: 'preparation',
    valueEnum: EventStatusBuilderEnum.preparation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Preparation',
    ),
  );

  /// in_progress
  static EventStatusBuilder inProgress = EventStatusBuilder._(
    valueString: 'in-progress',
    valueEnum: EventStatusBuilderEnum.inProgress,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'In Progress',
    ),
  );

  /// not_done
  static EventStatusBuilder notDone = EventStatusBuilder._(
    valueString: 'not-done',
    valueEnum: EventStatusBuilderEnum.notDone,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Done',
    ),
  );

  /// on_hold
  static EventStatusBuilder onHold = EventStatusBuilder._(
    valueString: 'on-hold',
    valueEnum: EventStatusBuilderEnum.onHold,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'On Hold',
    ),
  );

  /// stopped
  static EventStatusBuilder stopped = EventStatusBuilder._(
    valueString: 'stopped',
    valueEnum: EventStatusBuilderEnum.stopped,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Stopped',
    ),
  );

  /// completed
  static EventStatusBuilder completed = EventStatusBuilder._(
    valueString: 'completed',
    valueEnum: EventStatusBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static EventStatusBuilder enteredInError = EventStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: EventStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static EventStatusBuilder unknown = EventStatusBuilder._(
    valueString: 'unknown',
    valueEnum: EventStatusBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static EventStatusBuilder elementOnly = EventStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<EventStatusBuilder> values = [
    preparation,
    inProgress,
    notDone,
    onHold,
    stopped,
    completed,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  EventStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return EventStatusBuilder._(
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
