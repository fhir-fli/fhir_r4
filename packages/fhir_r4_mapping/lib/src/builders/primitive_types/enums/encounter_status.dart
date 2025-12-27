part of '../primitive_types.dart';

/// Actual enum for EncounterStatus
enum EncounterStatusBuilderEnum {
  /// planned
  planned,

  /// arrived
  arrived,

  /// triaged
  triaged,

  /// in-progress
  inProgress,

  /// onleave
  onleave,

  /// finished
  finished,

  /// cancelled
  cancelled,

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
      case EncounterStatusBuilderEnum.planned:
        return 'planned';
      case EncounterStatusBuilderEnum.arrived:
        return 'arrived';
      case EncounterStatusBuilderEnum.triaged:
        return 'triaged';
      case EncounterStatusBuilderEnum.inProgress:
        return 'in-progress';
      case EncounterStatusBuilderEnum.onleave:
        return 'onleave';
      case EncounterStatusBuilderEnum.finished:
        return 'finished';
      case EncounterStatusBuilderEnum.cancelled:
        return 'cancelled';
      case EncounterStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case EncounterStatusBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EncounterStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return EncounterStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EncounterStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'planned':
        return EncounterStatusBuilderEnum.planned;
      case 'arrived':
        return EncounterStatusBuilderEnum.arrived;
      case 'triaged':
        return EncounterStatusBuilderEnum.triaged;
      case 'in-progress':
        return EncounterStatusBuilderEnum.inProgress;
      case 'onleave':
        return EncounterStatusBuilderEnum.onleave;
      case 'finished':
        return EncounterStatusBuilderEnum.finished;
      case 'cancelled':
        return EncounterStatusBuilderEnum.cancelled;
      case 'entered-in-error':
        return EncounterStatusBuilderEnum.enteredInError;
      case 'unknown':
        return EncounterStatusBuilderEnum.unknown;
    }
    return null;
  }
}

/// Current state of the encounter.
class EncounterStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EncounterStatusBuilder._({
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
  factory EncounterStatusBuilder(
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
    final valueEnum = EncounterStatusBuilderEnum.fromString(
      valueString,
    );
    return EncounterStatusBuilder._(
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

  /// Create empty [EncounterStatusBuilder]
  /// with element only
  factory EncounterStatusBuilder.empty() =>
      EncounterStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [EncounterStatusBuilder] from JSON.
  factory EncounterStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EncounterStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EncounterStatusBuilder cannot be constructed from JSON.',
      );
    }
    return EncounterStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for EncounterStatusBuilder
  final EncounterStatusBuilderEnum? valueEnum;

  /// planned
  static EncounterStatusBuilder planned = EncounterStatusBuilder._(
    valueString: 'planned',
    valueEnum: EncounterStatusBuilderEnum.planned,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/encounter-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Planned',
    ),
  );

  /// arrived
  static EncounterStatusBuilder arrived = EncounterStatusBuilder._(
    valueString: 'arrived',
    valueEnum: EncounterStatusBuilderEnum.arrived,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/encounter-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Arrived',
    ),
  );

  /// triaged
  static EncounterStatusBuilder triaged = EncounterStatusBuilder._(
    valueString: 'triaged',
    valueEnum: EncounterStatusBuilderEnum.triaged,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/encounter-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Triaged',
    ),
  );

  /// in_progress
  static EncounterStatusBuilder inProgress = EncounterStatusBuilder._(
    valueString: 'in-progress',
    valueEnum: EncounterStatusBuilderEnum.inProgress,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/encounter-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'In Progress',
    ),
  );

  /// onleave
  static EncounterStatusBuilder onleave = EncounterStatusBuilder._(
    valueString: 'onleave',
    valueEnum: EncounterStatusBuilderEnum.onleave,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/encounter-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'On Leave',
    ),
  );

  /// finished
  static EncounterStatusBuilder finished = EncounterStatusBuilder._(
    valueString: 'finished',
    valueEnum: EncounterStatusBuilderEnum.finished,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/encounter-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Finished',
    ),
  );

  /// cancelled
  static EncounterStatusBuilder cancelled = EncounterStatusBuilder._(
    valueString: 'cancelled',
    valueEnum: EncounterStatusBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/encounter-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Cancelled',
    ),
  );

  /// entered_in_error
  static EncounterStatusBuilder enteredInError = EncounterStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: EncounterStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/encounter-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static EncounterStatusBuilder unknown = EncounterStatusBuilder._(
    valueString: 'unknown',
    valueEnum: EncounterStatusBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/encounter-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static EncounterStatusBuilder elementOnly = EncounterStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<EncounterStatusBuilder> values = [
    planned,
    arrived,
    triaged,
    inProgress,
    onleave,
    finished,
    cancelled,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  EncounterStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return EncounterStatusBuilder._(
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
