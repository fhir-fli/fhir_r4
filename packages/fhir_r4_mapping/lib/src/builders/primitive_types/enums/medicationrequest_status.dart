part of '../primitive_types.dart';

/// Actual enum for MedicationrequestStatus
enum MedicationrequestStatusBuilderEnum {
  /// active
  active,

  /// on-hold
  onHold,

  /// cancelled
  cancelled,

  /// completed
  completed,

  /// entered-in-error
  enteredInError,

  /// stopped
  stopped,

  /// draft
  draft,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case MedicationrequestStatusBuilderEnum.active:
        return 'active';
      case MedicationrequestStatusBuilderEnum.onHold:
        return 'on-hold';
      case MedicationrequestStatusBuilderEnum.cancelled:
        return 'cancelled';
      case MedicationrequestStatusBuilderEnum.completed:
        return 'completed';
      case MedicationrequestStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case MedicationrequestStatusBuilderEnum.stopped:
        return 'stopped';
      case MedicationrequestStatusBuilderEnum.draft:
        return 'draft';
      case MedicationrequestStatusBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MedicationrequestStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return MedicationrequestStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MedicationrequestStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return MedicationrequestStatusBuilderEnum.active;
      case 'on-hold':
        return MedicationrequestStatusBuilderEnum.onHold;
      case 'cancelled':
        return MedicationrequestStatusBuilderEnum.cancelled;
      case 'completed':
        return MedicationrequestStatusBuilderEnum.completed;
      case 'entered-in-error':
        return MedicationrequestStatusBuilderEnum.enteredInError;
      case 'stopped':
        return MedicationrequestStatusBuilderEnum.stopped;
      case 'draft':
        return MedicationrequestStatusBuilderEnum.draft;
      case 'unknown':
        return MedicationrequestStatusBuilderEnum.unknown;
    }
    return null;
  }
}

/// MedicationRequest Status Codes
class MedicationrequestStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  MedicationrequestStatusBuilder._({
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
  factory MedicationrequestStatusBuilder(
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
    final valueEnum = MedicationrequestStatusBuilderEnum.fromString(
      valueString,
    );
    return MedicationrequestStatusBuilder._(
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

  /// Create empty [MedicationrequestStatusBuilder]
  /// with element only
  factory MedicationrequestStatusBuilder.empty() =>
      MedicationrequestStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [MedicationrequestStatusBuilder] from JSON.
  factory MedicationrequestStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationrequestStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationrequestStatusBuilder cannot be constructed from JSON.',
      );
    }
    return MedicationrequestStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for MedicationrequestStatusBuilder
  final MedicationrequestStatusBuilderEnum? valueEnum;

  /// active
  static MedicationrequestStatusBuilder active =
      MedicationrequestStatusBuilder._(
    valueString: 'active',
    valueEnum: MedicationrequestStatusBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// on_hold
  static MedicationrequestStatusBuilder onHold =
      MedicationrequestStatusBuilder._(
    valueString: 'on-hold',
    valueEnum: MedicationrequestStatusBuilderEnum.onHold,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'On Hold',
    ),
  );

  /// cancelled
  static MedicationrequestStatusBuilder cancelled =
      MedicationrequestStatusBuilder._(
    valueString: 'cancelled',
    valueEnum: MedicationrequestStatusBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Cancelled',
    ),
  );

  /// completed
  static MedicationrequestStatusBuilder completed =
      MedicationrequestStatusBuilder._(
    valueString: 'completed',
    valueEnum: MedicationrequestStatusBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static MedicationrequestStatusBuilder enteredInError =
      MedicationrequestStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: MedicationrequestStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// stopped
  static MedicationrequestStatusBuilder stopped =
      MedicationrequestStatusBuilder._(
    valueString: 'stopped',
    valueEnum: MedicationrequestStatusBuilderEnum.stopped,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Stopped',
    ),
  );

  /// draft
  static MedicationrequestStatusBuilder draft =
      MedicationrequestStatusBuilder._(
    valueString: 'draft',
    valueEnum: MedicationrequestStatusBuilderEnum.draft,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Draft',
    ),
  );

  /// unknown
  static MedicationrequestStatusBuilder unknown =
      MedicationrequestStatusBuilder._(
    valueString: 'unknown',
    valueEnum: MedicationrequestStatusBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static MedicationrequestStatusBuilder elementOnly =
      MedicationrequestStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<MedicationrequestStatusBuilder> values = [
    active,
    onHold,
    cancelled,
    completed,
    enteredInError,
    stopped,
    draft,
    unknown,
  ];

  /// Returns the enum value with an element attached
  MedicationrequestStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return MedicationrequestStatusBuilder._(
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
