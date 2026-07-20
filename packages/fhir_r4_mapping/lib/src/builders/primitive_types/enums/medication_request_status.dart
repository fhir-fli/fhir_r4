part of '../primitive_types.dart';

/// Actual enum for MedicationRequestStatus
enum MedicationRequestStatusBuilderEnum {
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
      case MedicationRequestStatusBuilderEnum.active:
        return 'active';
      case MedicationRequestStatusBuilderEnum.onHold:
        return 'on-hold';
      case MedicationRequestStatusBuilderEnum.cancelled:
        return 'cancelled';
      case MedicationRequestStatusBuilderEnum.completed:
        return 'completed';
      case MedicationRequestStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case MedicationRequestStatusBuilderEnum.stopped:
        return 'stopped';
      case MedicationRequestStatusBuilderEnum.draft:
        return 'draft';
      case MedicationRequestStatusBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MedicationRequestStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return MedicationRequestStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MedicationRequestStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return MedicationRequestStatusBuilderEnum.active;
      case 'on-hold':
        return MedicationRequestStatusBuilderEnum.onHold;
      case 'cancelled':
        return MedicationRequestStatusBuilderEnum.cancelled;
      case 'completed':
        return MedicationRequestStatusBuilderEnum.completed;
      case 'entered-in-error':
        return MedicationRequestStatusBuilderEnum.enteredInError;
      case 'stopped':
        return MedicationRequestStatusBuilderEnum.stopped;
      case 'draft':
        return MedicationRequestStatusBuilderEnum.draft;
      case 'unknown':
        return MedicationRequestStatusBuilderEnum.unknown;
    }
    return null;
  }
}

/// MedicationRequest Status Codes
class MedicationRequestStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  MedicationRequestStatusBuilder._({
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
  factory MedicationRequestStatusBuilder(
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
    final valueEnum = MedicationRequestStatusBuilderEnum.fromString(
      valueString,
    );
    return MedicationRequestStatusBuilder._(
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

  /// Create empty [MedicationRequestStatusBuilder]
  /// with element only
  factory MedicationRequestStatusBuilder.empty() =>
      MedicationRequestStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [MedicationRequestStatusBuilder] from JSON.
  factory MedicationRequestStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationRequestStatusBuilder cannot be constructed from JSON.',
      );
    }
    return MedicationRequestStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for MedicationRequestStatusBuilder
  final MedicationRequestStatusBuilderEnum? valueEnum;

  /// active
  static MedicationRequestStatusBuilder active =
      MedicationRequestStatusBuilder._(
    valueString: 'active',
    valueEnum: MedicationRequestStatusBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// on_hold
  static MedicationRequestStatusBuilder onHold =
      MedicationRequestStatusBuilder._(
    valueString: 'on-hold',
    valueEnum: MedicationRequestStatusBuilderEnum.onHold,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'On Hold',
    ),
  );

  /// cancelled
  static MedicationRequestStatusBuilder cancelled =
      MedicationRequestStatusBuilder._(
    valueString: 'cancelled',
    valueEnum: MedicationRequestStatusBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Cancelled',
    ),
  );

  /// completed
  static MedicationRequestStatusBuilder completed =
      MedicationRequestStatusBuilder._(
    valueString: 'completed',
    valueEnum: MedicationRequestStatusBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static MedicationRequestStatusBuilder enteredInError =
      MedicationRequestStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: MedicationRequestStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// stopped
  static MedicationRequestStatusBuilder stopped =
      MedicationRequestStatusBuilder._(
    valueString: 'stopped',
    valueEnum: MedicationRequestStatusBuilderEnum.stopped,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Stopped',
    ),
  );

  /// draft
  static MedicationRequestStatusBuilder draft =
      MedicationRequestStatusBuilder._(
    valueString: 'draft',
    valueEnum: MedicationRequestStatusBuilderEnum.draft,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Draft',
    ),
  );

  /// unknown
  static MedicationRequestStatusBuilder unknown =
      MedicationRequestStatusBuilder._(
    valueString: 'unknown',
    valueEnum: MedicationRequestStatusBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static MedicationRequestStatusBuilder elementOnly =
      MedicationRequestStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<MedicationRequestStatusBuilder> values = [
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
  MedicationRequestStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return MedicationRequestStatusBuilder._(
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
