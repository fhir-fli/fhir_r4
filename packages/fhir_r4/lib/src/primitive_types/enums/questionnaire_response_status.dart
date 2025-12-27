part of '../primitive_types.dart';

/// Actual enum for QuestionnaireResponseStatus
enum QuestionnaireResponseStatusEnum {
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
      case QuestionnaireResponseStatusEnum.inProgress:
        return 'in-progress';
      case QuestionnaireResponseStatusEnum.completed:
        return 'completed';
      case QuestionnaireResponseStatusEnum.amended:
        return 'amended';
      case QuestionnaireResponseStatusEnum.enteredInError:
        return 'entered-in-error';
      case QuestionnaireResponseStatusEnum.stopped:
        return 'stopped';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static QuestionnaireResponseStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return QuestionnaireResponseStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static QuestionnaireResponseStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'in-progress':
        return QuestionnaireResponseStatusEnum.inProgress;
      case 'completed':
        return QuestionnaireResponseStatusEnum.completed;
      case 'amended':
        return QuestionnaireResponseStatusEnum.amended;
      case 'entered-in-error':
        return QuestionnaireResponseStatusEnum.enteredInError;
      case 'stopped':
        return QuestionnaireResponseStatusEnum.stopped;
    }
    return null;
  }
}

/// Lifecycle status of the questionnaire response.
class QuestionnaireResponseStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const QuestionnaireResponseStatus._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory QuestionnaireResponseStatus(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = QuestionnaireResponseStatusEnum.fromString(valueString);
    return QuestionnaireResponseStatus._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [QuestionnaireResponseStatus]
  /// from JSON.
  factory QuestionnaireResponseStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = QuestionnaireResponseStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireResponseStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuestionnaireResponseStatus cannot be constructed from JSON.',
      );
    }
    return QuestionnaireResponseStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for QuestionnaireResponseStatus
  final QuestionnaireResponseStatusEnum? valueEnum;

  /// in_progress
  static const QuestionnaireResponseStatus inProgress =
      QuestionnaireResponseStatus._(
    valueString: 'in-progress',
    valueEnum: QuestionnaireResponseStatusEnum.inProgress,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-answers-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'In Progress',
    ),
  );

  /// completed
  static const QuestionnaireResponseStatus completed =
      QuestionnaireResponseStatus._(
    valueString: 'completed',
    valueEnum: QuestionnaireResponseStatusEnum.completed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-answers-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Completed',
    ),
  );

  /// amended
  static const QuestionnaireResponseStatus amended =
      QuestionnaireResponseStatus._(
    valueString: 'amended',
    valueEnum: QuestionnaireResponseStatusEnum.amended,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-answers-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Amended',
    ),
  );

  /// entered_in_error
  static const QuestionnaireResponseStatus enteredInError =
      QuestionnaireResponseStatus._(
    valueString: 'entered-in-error',
    valueEnum: QuestionnaireResponseStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-answers-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// stopped
  static const QuestionnaireResponseStatus stopped =
      QuestionnaireResponseStatus._(
    valueString: 'stopped',
    valueEnum: QuestionnaireResponseStatusEnum.stopped,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-answers-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Stopped',
    ),
  );

  /// List of all enum-like values
  static final List<QuestionnaireResponseStatus> values = [
    inProgress,
    completed,
    amended,
    enteredInError,
    stopped,
  ];

  /// Returns the enum value with an element attached
  QuestionnaireResponseStatus withElement(Element? newElement) {
    return QuestionnaireResponseStatus._(
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

  @override
  QuestionnaireResponseStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  QuestionnaireResponseStatusCopyWithImpl<QuestionnaireResponseStatus>
      get copyWith =>
          QuestionnaireResponseStatusCopyWithImpl<QuestionnaireResponseStatus>(
            this,
            (v) => v as QuestionnaireResponseStatus,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class QuestionnaireResponseStatusCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  QuestionnaireResponseStatusCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      QuestionnaireResponseStatus(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
