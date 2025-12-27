part of '../primitive_types.dart';

/// Actual enum for ImmunizationEvaluationStatusCodes
enum ImmunizationEvaluationStatusCodesBuilderEnum {
  /// in-progress
  inProgress,

  /// not-done
  notDone,

  /// on-hold
  onHold,

  /// completed
  completed,

  /// entered-in-error
  enteredInError,

  /// stopped
  stopped,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ImmunizationEvaluationStatusCodesBuilderEnum.inProgress:
        return 'in-progress';
      case ImmunizationEvaluationStatusCodesBuilderEnum.notDone:
        return 'not-done';
      case ImmunizationEvaluationStatusCodesBuilderEnum.onHold:
        return 'on-hold';
      case ImmunizationEvaluationStatusCodesBuilderEnum.completed:
        return 'completed';
      case ImmunizationEvaluationStatusCodesBuilderEnum.enteredInError:
        return 'entered-in-error';
      case ImmunizationEvaluationStatusCodesBuilderEnum.stopped:
        return 'stopped';
      case ImmunizationEvaluationStatusCodesBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ImmunizationEvaluationStatusCodesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ImmunizationEvaluationStatusCodesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ImmunizationEvaluationStatusCodesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'in-progress':
        return ImmunizationEvaluationStatusCodesBuilderEnum.inProgress;
      case 'not-done':
        return ImmunizationEvaluationStatusCodesBuilderEnum.notDone;
      case 'on-hold':
        return ImmunizationEvaluationStatusCodesBuilderEnum.onHold;
      case 'completed':
        return ImmunizationEvaluationStatusCodesBuilderEnum.completed;
      case 'entered-in-error':
        return ImmunizationEvaluationStatusCodesBuilderEnum.enteredInError;
      case 'stopped':
        return ImmunizationEvaluationStatusCodesBuilderEnum.stopped;
      case 'unknown':
        return ImmunizationEvaluationStatusCodesBuilderEnum.unknown;
    }
    return null;
  }
}

/// The value set to instantiate this attribute should be drawn from a
/// terminologically robust code system that consists of or contains
/// concepts to support describing the current status of the evaluation for
/// vaccine administration event.
class ImmunizationEvaluationStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ImmunizationEvaluationStatusCodesBuilder._({
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
  factory ImmunizationEvaluationStatusCodesBuilder(
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
    final valueEnum = ImmunizationEvaluationStatusCodesBuilderEnum.fromString(
      valueString,
    );
    return ImmunizationEvaluationStatusCodesBuilder._(
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

  /// Create empty [ImmunizationEvaluationStatusCodesBuilder]
  /// with element only
  factory ImmunizationEvaluationStatusCodesBuilder.empty() =>
      ImmunizationEvaluationStatusCodesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ImmunizationEvaluationStatusCodesBuilder] from JSON.
  factory ImmunizationEvaluationStatusCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationEvaluationStatusCodesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImmunizationEvaluationStatusCodesBuilder cannot be constructed from JSON.',
      );
    }
    return ImmunizationEvaluationStatusCodesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ImmunizationEvaluationStatusCodesBuilder
  final ImmunizationEvaluationStatusCodesBuilderEnum? valueEnum;

  /// in_progress
  static ImmunizationEvaluationStatusCodesBuilder inProgress =
      ImmunizationEvaluationStatusCodesBuilder._(
    valueString: 'in-progress',
    valueEnum: ImmunizationEvaluationStatusCodesBuilderEnum.inProgress,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/immunization-evaluation-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'In Progress',
    ),
  );

  /// not_done
  static ImmunizationEvaluationStatusCodesBuilder notDone =
      ImmunizationEvaluationStatusCodesBuilder._(
    valueString: 'not-done',
    valueEnum: ImmunizationEvaluationStatusCodesBuilderEnum.notDone,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/immunization-evaluation-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Done',
    ),
  );

  /// on_hold
  static ImmunizationEvaluationStatusCodesBuilder onHold =
      ImmunizationEvaluationStatusCodesBuilder._(
    valueString: 'on-hold',
    valueEnum: ImmunizationEvaluationStatusCodesBuilderEnum.onHold,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/immunization-evaluation-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'On Hold',
    ),
  );

  /// completed
  static ImmunizationEvaluationStatusCodesBuilder completed =
      ImmunizationEvaluationStatusCodesBuilder._(
    valueString: 'completed',
    valueEnum: ImmunizationEvaluationStatusCodesBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/immunization-evaluation-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static ImmunizationEvaluationStatusCodesBuilder enteredInError =
      ImmunizationEvaluationStatusCodesBuilder._(
    valueString: 'entered-in-error',
    valueEnum: ImmunizationEvaluationStatusCodesBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/immunization-evaluation-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// stopped
  static ImmunizationEvaluationStatusCodesBuilder stopped =
      ImmunizationEvaluationStatusCodesBuilder._(
    valueString: 'stopped',
    valueEnum: ImmunizationEvaluationStatusCodesBuilderEnum.stopped,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/immunization-evaluation-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Stopped',
    ),
  );

  /// unknown
  static ImmunizationEvaluationStatusCodesBuilder unknown =
      ImmunizationEvaluationStatusCodesBuilder._(
    valueString: 'unknown',
    valueEnum: ImmunizationEvaluationStatusCodesBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/immunization-evaluation-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static ImmunizationEvaluationStatusCodesBuilder elementOnly =
      ImmunizationEvaluationStatusCodesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ImmunizationEvaluationStatusCodesBuilder> values = [
    inProgress,
    notDone,
    onHold,
    completed,
    enteredInError,
    stopped,
    unknown,
  ];

  /// Returns the enum value with an element attached
  ImmunizationEvaluationStatusCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ImmunizationEvaluationStatusCodesBuilder._(
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
