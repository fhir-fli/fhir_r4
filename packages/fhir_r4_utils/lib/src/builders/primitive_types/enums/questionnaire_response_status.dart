// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for QuestionnaireResponseStatus
enum QuestionnaireResponseStatusBuilderEnum {
  /// in-progress
  inProgress,

  /// completed
  completed,

  /// amended
  amended,

  /// entered-in-error
  enteredInError,

  /// stopped
  stopped,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case QuestionnaireResponseStatusBuilderEnum.inProgress:
        return 'in-progress';
      case QuestionnaireResponseStatusBuilderEnum.completed:
        return 'completed';
      case QuestionnaireResponseStatusBuilderEnum.amended:
        return 'amended';
      case QuestionnaireResponseStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case QuestionnaireResponseStatusBuilderEnum.stopped:
        return 'stopped';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static QuestionnaireResponseStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return QuestionnaireResponseStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static QuestionnaireResponseStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'in-progress':
        return QuestionnaireResponseStatusBuilderEnum.inProgress;
      case 'completed':
        return QuestionnaireResponseStatusBuilderEnum.completed;
      case 'amended':
        return QuestionnaireResponseStatusBuilderEnum.amended;
      case 'entered-in-error':
        return QuestionnaireResponseStatusBuilderEnum.enteredInError;
      case 'stopped':
        return QuestionnaireResponseStatusBuilderEnum.stopped;
    }
    return null;
  }
}

/// Lifecycle status of the questionnaire response.
class QuestionnaireResponseStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  QuestionnaireResponseStatusBuilder._({
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
  factory QuestionnaireResponseStatusBuilder(
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
    final valueEnum = QuestionnaireResponseStatusBuilderEnum.fromString(
      valueString,
    );
    return QuestionnaireResponseStatusBuilder._(
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

  /// Create empty [QuestionnaireResponseStatusBuilder]
  /// with element only
  factory QuestionnaireResponseStatusBuilder.empty() =>
      QuestionnaireResponseStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [QuestionnaireResponseStatusBuilder] from JSON.
  factory QuestionnaireResponseStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireResponseStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuestionnaireResponseStatusBuilder cannot be constructed from JSON.',
      );
    }
    return QuestionnaireResponseStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for QuestionnaireResponseStatusBuilder
  final QuestionnaireResponseStatusBuilderEnum? valueEnum;

  /// in_progress
  static QuestionnaireResponseStatusBuilder inProgress =
      QuestionnaireResponseStatusBuilder._(
    valueString: 'in-progress',
    valueEnum: QuestionnaireResponseStatusBuilderEnum.inProgress,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-answers-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'In Progress',
    ),
  );

  /// completed
  static QuestionnaireResponseStatusBuilder completed =
      QuestionnaireResponseStatusBuilder._(
    valueString: 'completed',
    valueEnum: QuestionnaireResponseStatusBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-answers-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// amended
  static QuestionnaireResponseStatusBuilder amended =
      QuestionnaireResponseStatusBuilder._(
    valueString: 'amended',
    valueEnum: QuestionnaireResponseStatusBuilderEnum.amended,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-answers-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Amended',
    ),
  );

  /// entered_in_error
  static QuestionnaireResponseStatusBuilder enteredInError =
      QuestionnaireResponseStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: QuestionnaireResponseStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-answers-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// stopped
  static QuestionnaireResponseStatusBuilder stopped =
      QuestionnaireResponseStatusBuilder._(
    valueString: 'stopped',
    valueEnum: QuestionnaireResponseStatusBuilderEnum.stopped,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-answers-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Stopped',
    ),
  );

  /// For instances where an Element is present but not value
  static QuestionnaireResponseStatusBuilder elementOnly =
      QuestionnaireResponseStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<QuestionnaireResponseStatusBuilder> values = [
    inProgress,
    completed,
    amended,
    enteredInError,
    stopped,
  ];

  /// Returns the enum value with an element attached
  QuestionnaireResponseStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return QuestionnaireResponseStatusBuilder._(
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
