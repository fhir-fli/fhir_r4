// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ImmunizationStatusCodes
enum ImmunizationStatusCodesBuilderEnum {
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
      case ImmunizationStatusCodesBuilderEnum.preparation:
        return 'preparation';
      case ImmunizationStatusCodesBuilderEnum.inProgress:
        return 'in-progress';
      case ImmunizationStatusCodesBuilderEnum.notDone:
        return 'not-done';
      case ImmunizationStatusCodesBuilderEnum.onHold:
        return 'on-hold';
      case ImmunizationStatusCodesBuilderEnum.stopped:
        return 'stopped';
      case ImmunizationStatusCodesBuilderEnum.completed:
        return 'completed';
      case ImmunizationStatusCodesBuilderEnum.enteredInError:
        return 'entered-in-error';
      case ImmunizationStatusCodesBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ImmunizationStatusCodesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ImmunizationStatusCodesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ImmunizationStatusCodesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'preparation':
        return ImmunizationStatusCodesBuilderEnum.preparation;
      case 'in-progress':
        return ImmunizationStatusCodesBuilderEnum.inProgress;
      case 'not-done':
        return ImmunizationStatusCodesBuilderEnum.notDone;
      case 'on-hold':
        return ImmunizationStatusCodesBuilderEnum.onHold;
      case 'stopped':
        return ImmunizationStatusCodesBuilderEnum.stopped;
      case 'completed':
        return ImmunizationStatusCodesBuilderEnum.completed;
      case 'entered-in-error':
        return ImmunizationStatusCodesBuilderEnum.enteredInError;
      case 'unknown':
        return ImmunizationStatusCodesBuilderEnum.unknown;
    }
    return null;
  }
}

/// The value set to instantiate this attribute should be drawn from a
/// terminologically robust code system that consists of or contains
/// concepts to support describing the current status of the administered
/// dose of vaccine.
class ImmunizationStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ImmunizationStatusCodesBuilder._({
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
  factory ImmunizationStatusCodesBuilder(
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
    final valueEnum = ImmunizationStatusCodesBuilderEnum.fromString(
      valueString,
    );
    return ImmunizationStatusCodesBuilder._(
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

  /// Create empty [ImmunizationStatusCodesBuilder]
  /// with element only
  factory ImmunizationStatusCodesBuilder.empty() =>
      ImmunizationStatusCodesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ImmunizationStatusCodesBuilder] from JSON.
  factory ImmunizationStatusCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationStatusCodesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImmunizationStatusCodesBuilder cannot be constructed from JSON.',
      );
    }
    return ImmunizationStatusCodesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ImmunizationStatusCodesBuilder
  final ImmunizationStatusCodesBuilderEnum? valueEnum;

  /// preparation
  static ImmunizationStatusCodesBuilder preparation =
      ImmunizationStatusCodesBuilder._(
    valueString: 'preparation',
    valueEnum: ImmunizationStatusCodesBuilderEnum.preparation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/immunization-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Preparation',
    ),
  );

  /// in_progress
  static ImmunizationStatusCodesBuilder inProgress =
      ImmunizationStatusCodesBuilder._(
    valueString: 'in-progress',
    valueEnum: ImmunizationStatusCodesBuilderEnum.inProgress,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/immunization-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'In Progress',
    ),
  );

  /// not_done
  static ImmunizationStatusCodesBuilder notDone =
      ImmunizationStatusCodesBuilder._(
    valueString: 'not-done',
    valueEnum: ImmunizationStatusCodesBuilderEnum.notDone,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/immunization-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Done',
    ),
  );

  /// on_hold
  static ImmunizationStatusCodesBuilder onHold =
      ImmunizationStatusCodesBuilder._(
    valueString: 'on-hold',
    valueEnum: ImmunizationStatusCodesBuilderEnum.onHold,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/immunization-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'On Hold',
    ),
  );

  /// stopped
  static ImmunizationStatusCodesBuilder stopped =
      ImmunizationStatusCodesBuilder._(
    valueString: 'stopped',
    valueEnum: ImmunizationStatusCodesBuilderEnum.stopped,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/immunization-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Stopped',
    ),
  );

  /// completed
  static ImmunizationStatusCodesBuilder completed =
      ImmunizationStatusCodesBuilder._(
    valueString: 'completed',
    valueEnum: ImmunizationStatusCodesBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/immunization-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static ImmunizationStatusCodesBuilder enteredInError =
      ImmunizationStatusCodesBuilder._(
    valueString: 'entered-in-error',
    valueEnum: ImmunizationStatusCodesBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/immunization-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static ImmunizationStatusCodesBuilder unknown =
      ImmunizationStatusCodesBuilder._(
    valueString: 'unknown',
    valueEnum: ImmunizationStatusCodesBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/immunization-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static ImmunizationStatusCodesBuilder elementOnly =
      ImmunizationStatusCodesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ImmunizationStatusCodesBuilder> values = [
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
  ImmunizationStatusCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ImmunizationStatusCodesBuilder._(
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
