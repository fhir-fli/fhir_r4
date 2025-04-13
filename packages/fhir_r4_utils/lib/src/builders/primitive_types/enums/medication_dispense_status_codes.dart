// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for MedicationDispenseStatusCodes
enum MedicationDispenseStatusCodesBuilderEnum {
  /// preparation
  preparation,

  /// in-progress
  inProgress,

  /// cancelled
  cancelled,

  /// on-hold
  onHold,

  /// completed
  completed,

  /// entered-in-error
  enteredInError,

  /// stopped
  stopped,

  /// declined
  declined,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case MedicationDispenseStatusCodesBuilderEnum.preparation:
        return 'preparation';
      case MedicationDispenseStatusCodesBuilderEnum.inProgress:
        return 'in-progress';
      case MedicationDispenseStatusCodesBuilderEnum.cancelled:
        return 'cancelled';
      case MedicationDispenseStatusCodesBuilderEnum.onHold:
        return 'on-hold';
      case MedicationDispenseStatusCodesBuilderEnum.completed:
        return 'completed';
      case MedicationDispenseStatusCodesBuilderEnum.enteredInError:
        return 'entered-in-error';
      case MedicationDispenseStatusCodesBuilderEnum.stopped:
        return 'stopped';
      case MedicationDispenseStatusCodesBuilderEnum.declined:
        return 'declined';
      case MedicationDispenseStatusCodesBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MedicationDispenseStatusCodesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return MedicationDispenseStatusCodesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MedicationDispenseStatusCodesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'preparation':
        return MedicationDispenseStatusCodesBuilderEnum.preparation;
      case 'in-progress':
        return MedicationDispenseStatusCodesBuilderEnum.inProgress;
      case 'cancelled':
        return MedicationDispenseStatusCodesBuilderEnum.cancelled;
      case 'on-hold':
        return MedicationDispenseStatusCodesBuilderEnum.onHold;
      case 'completed':
        return MedicationDispenseStatusCodesBuilderEnum.completed;
      case 'entered-in-error':
        return MedicationDispenseStatusCodesBuilderEnum.enteredInError;
      case 'stopped':
        return MedicationDispenseStatusCodesBuilderEnum.stopped;
      case 'declined':
        return MedicationDispenseStatusCodesBuilderEnum.declined;
      case 'unknown':
        return MedicationDispenseStatusCodesBuilderEnum.unknown;
    }
    return null;
  }
}

/// MedicationDispense Status Codes
class MedicationDispenseStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  MedicationDispenseStatusCodesBuilder._({
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
  factory MedicationDispenseStatusCodesBuilder(
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
    final valueEnum = MedicationDispenseStatusCodesBuilderEnum.fromString(
      valueString,
    );
    return MedicationDispenseStatusCodesBuilder._(
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

  /// Create empty [MedicationDispenseStatusCodesBuilder]
  /// with element only
  factory MedicationDispenseStatusCodesBuilder.empty() =>
      MedicationDispenseStatusCodesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [MedicationDispenseStatusCodesBuilder] from JSON.
  factory MedicationDispenseStatusCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationDispenseStatusCodesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationDispenseStatusCodesBuilder cannot be constructed from JSON.',
      );
    }
    return MedicationDispenseStatusCodesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for MedicationDispenseStatusCodesBuilder
  final MedicationDispenseStatusCodesBuilderEnum? valueEnum;

  /// preparation
  static MedicationDispenseStatusCodesBuilder preparation =
      MedicationDispenseStatusCodesBuilder._(
    valueString: 'preparation',
    valueEnum: MedicationDispenseStatusCodesBuilderEnum.preparation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Preparation',
    ),
  );

  /// in_progress
  static MedicationDispenseStatusCodesBuilder inProgress =
      MedicationDispenseStatusCodesBuilder._(
    valueString: 'in-progress',
    valueEnum: MedicationDispenseStatusCodesBuilderEnum.inProgress,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'In Progress',
    ),
  );

  /// cancelled
  static MedicationDispenseStatusCodesBuilder cancelled =
      MedicationDispenseStatusCodesBuilder._(
    valueString: 'cancelled',
    valueEnum: MedicationDispenseStatusCodesBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Cancelled',
    ),
  );

  /// on_hold
  static MedicationDispenseStatusCodesBuilder onHold =
      MedicationDispenseStatusCodesBuilder._(
    valueString: 'on-hold',
    valueEnum: MedicationDispenseStatusCodesBuilderEnum.onHold,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'On Hold',
    ),
  );

  /// completed
  static MedicationDispenseStatusCodesBuilder completed =
      MedicationDispenseStatusCodesBuilder._(
    valueString: 'completed',
    valueEnum: MedicationDispenseStatusCodesBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static MedicationDispenseStatusCodesBuilder enteredInError =
      MedicationDispenseStatusCodesBuilder._(
    valueString: 'entered-in-error',
    valueEnum: MedicationDispenseStatusCodesBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// stopped
  static MedicationDispenseStatusCodesBuilder stopped =
      MedicationDispenseStatusCodesBuilder._(
    valueString: 'stopped',
    valueEnum: MedicationDispenseStatusCodesBuilderEnum.stopped,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Stopped',
    ),
  );

  /// declined
  static MedicationDispenseStatusCodesBuilder declined =
      MedicationDispenseStatusCodesBuilder._(
    valueString: 'declined',
    valueEnum: MedicationDispenseStatusCodesBuilderEnum.declined,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Declined',
    ),
  );

  /// unknown
  static MedicationDispenseStatusCodesBuilder unknown =
      MedicationDispenseStatusCodesBuilder._(
    valueString: 'unknown',
    valueEnum: MedicationDispenseStatusCodesBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationdispense-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static MedicationDispenseStatusCodesBuilder elementOnly =
      MedicationDispenseStatusCodesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<MedicationDispenseStatusCodesBuilder> values = [
    preparation,
    inProgress,
    cancelled,
    onHold,
    completed,
    enteredInError,
    stopped,
    declined,
    unknown,
  ];

  /// Returns the enum value with an element attached
  MedicationDispenseStatusCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return MedicationDispenseStatusCodesBuilder._(
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
