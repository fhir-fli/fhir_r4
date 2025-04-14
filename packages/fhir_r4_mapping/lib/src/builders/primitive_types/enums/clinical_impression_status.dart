// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ClinicalImpressionStatus
enum ClinicalImpressionStatusBuilderEnum {
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
      case ClinicalImpressionStatusBuilderEnum.preparation:
        return 'preparation';
      case ClinicalImpressionStatusBuilderEnum.inProgress:
        return 'in-progress';
      case ClinicalImpressionStatusBuilderEnum.notDone:
        return 'not-done';
      case ClinicalImpressionStatusBuilderEnum.onHold:
        return 'on-hold';
      case ClinicalImpressionStatusBuilderEnum.stopped:
        return 'stopped';
      case ClinicalImpressionStatusBuilderEnum.completed:
        return 'completed';
      case ClinicalImpressionStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case ClinicalImpressionStatusBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ClinicalImpressionStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ClinicalImpressionStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ClinicalImpressionStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'preparation':
        return ClinicalImpressionStatusBuilderEnum.preparation;
      case 'in-progress':
        return ClinicalImpressionStatusBuilderEnum.inProgress;
      case 'not-done':
        return ClinicalImpressionStatusBuilderEnum.notDone;
      case 'on-hold':
        return ClinicalImpressionStatusBuilderEnum.onHold;
      case 'stopped':
        return ClinicalImpressionStatusBuilderEnum.stopped;
      case 'completed':
        return ClinicalImpressionStatusBuilderEnum.completed;
      case 'entered-in-error':
        return ClinicalImpressionStatusBuilderEnum.enteredInError;
      case 'unknown':
        return ClinicalImpressionStatusBuilderEnum.unknown;
    }
    return null;
  }
}

/// Codes that reflect the current state of a clinical impression within
/// its overall lifecycle.
class ClinicalImpressionStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ClinicalImpressionStatusBuilder._({
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
  factory ClinicalImpressionStatusBuilder(
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
    final valueEnum = ClinicalImpressionStatusBuilderEnum.fromString(
      valueString,
    );
    return ClinicalImpressionStatusBuilder._(
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

  /// Create empty [ClinicalImpressionStatusBuilder]
  /// with element only
  factory ClinicalImpressionStatusBuilder.empty() =>
      ClinicalImpressionStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ClinicalImpressionStatusBuilder] from JSON.
  factory ClinicalImpressionStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClinicalImpressionStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ClinicalImpressionStatusBuilder cannot be constructed from JSON.',
      );
    }
    return ClinicalImpressionStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ClinicalImpressionStatusBuilder
  final ClinicalImpressionStatusBuilderEnum? valueEnum;

  /// preparation
  static ClinicalImpressionStatusBuilder preparation =
      ClinicalImpressionStatusBuilder._(
    valueString: 'preparation',
    valueEnum: ClinicalImpressionStatusBuilderEnum.preparation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Preparation',
    ),
  );

  /// in_progress
  static ClinicalImpressionStatusBuilder inProgress =
      ClinicalImpressionStatusBuilder._(
    valueString: 'in-progress',
    valueEnum: ClinicalImpressionStatusBuilderEnum.inProgress,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'In Progress',
    ),
  );

  /// not_done
  static ClinicalImpressionStatusBuilder notDone =
      ClinicalImpressionStatusBuilder._(
    valueString: 'not-done',
    valueEnum: ClinicalImpressionStatusBuilderEnum.notDone,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Done',
    ),
  );

  /// on_hold
  static ClinicalImpressionStatusBuilder onHold =
      ClinicalImpressionStatusBuilder._(
    valueString: 'on-hold',
    valueEnum: ClinicalImpressionStatusBuilderEnum.onHold,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'On Hold',
    ),
  );

  /// stopped
  static ClinicalImpressionStatusBuilder stopped =
      ClinicalImpressionStatusBuilder._(
    valueString: 'stopped',
    valueEnum: ClinicalImpressionStatusBuilderEnum.stopped,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Stopped',
    ),
  );

  /// completed
  static ClinicalImpressionStatusBuilder completed =
      ClinicalImpressionStatusBuilder._(
    valueString: 'completed',
    valueEnum: ClinicalImpressionStatusBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static ClinicalImpressionStatusBuilder enteredInError =
      ClinicalImpressionStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: ClinicalImpressionStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static ClinicalImpressionStatusBuilder unknown =
      ClinicalImpressionStatusBuilder._(
    valueString: 'unknown',
    valueEnum: ClinicalImpressionStatusBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static ClinicalImpressionStatusBuilder elementOnly =
      ClinicalImpressionStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ClinicalImpressionStatusBuilder> values = [
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
  ClinicalImpressionStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ClinicalImpressionStatusBuilder._(
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
