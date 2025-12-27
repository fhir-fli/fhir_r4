part of '../primitive_types.dart';

/// Actual enum for QuestionnaireItemOperator
enum QuestionnaireItemOperatorEnum {
  /// exists
  exists,

  /// =
  eq,

  /// !=
  ne,

  /// >
  gt,

  /// <
  lt,

  /// >=
  ge,

  /// <=
  le,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case QuestionnaireItemOperatorEnum.exists:
        return 'exists';
      case QuestionnaireItemOperatorEnum.eq:
        return '=';
      case QuestionnaireItemOperatorEnum.ne:
        return '!=';
      case QuestionnaireItemOperatorEnum.gt:
        return '>';
      case QuestionnaireItemOperatorEnum.lt:
        return '<';
      case QuestionnaireItemOperatorEnum.ge:
        return '>=';
      case QuestionnaireItemOperatorEnum.le:
        return '<=';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static QuestionnaireItemOperatorEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return QuestionnaireItemOperatorEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static QuestionnaireItemOperatorEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'exists':
        return QuestionnaireItemOperatorEnum.exists;
      case '=':
        return QuestionnaireItemOperatorEnum.eq;
      case '!=':
        return QuestionnaireItemOperatorEnum.ne;
      case '>':
        return QuestionnaireItemOperatorEnum.gt;
      case '<':
        return QuestionnaireItemOperatorEnum.lt;
      case '>=':
        return QuestionnaireItemOperatorEnum.ge;
      case '<=':
        return QuestionnaireItemOperatorEnum.le;
    }
    return null;
  }
}

/// The criteria by which a question is enabled.
class QuestionnaireItemOperator extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const QuestionnaireItemOperator._({
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
  factory QuestionnaireItemOperator(
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
    final valueEnum = QuestionnaireItemOperatorEnum.fromString(valueString);
    return QuestionnaireItemOperator._(
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

  /// Factory constructor to create [QuestionnaireItemOperator]
  /// from JSON.
  factory QuestionnaireItemOperator.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = QuestionnaireItemOperatorEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireItemOperator._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuestionnaireItemOperator cannot be constructed from JSON.',
      );
    }
    return QuestionnaireItemOperator._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for QuestionnaireItemOperator
  final QuestionnaireItemOperatorEnum? valueEnum;

  /// exists
  static const QuestionnaireItemOperator exists = QuestionnaireItemOperator._(
    valueString: 'exists',
    valueEnum: QuestionnaireItemOperatorEnum.exists,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Exists',
    ),
  );

  /// eq
  static const QuestionnaireItemOperator eq = QuestionnaireItemOperator._(
    valueString: '=',
    valueEnum: QuestionnaireItemOperatorEnum.eq,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Equals',
    ),
  );

  /// ne
  static const QuestionnaireItemOperator ne = QuestionnaireItemOperator._(
    valueString: '!=',
    valueEnum: QuestionnaireItemOperatorEnum.ne,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Not Equals',
    ),
  );

  /// gt
  static const QuestionnaireItemOperator gt = QuestionnaireItemOperator._(
    valueString: '>',
    valueEnum: QuestionnaireItemOperatorEnum.gt,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Greater Than',
    ),
  );

  /// lt
  static const QuestionnaireItemOperator lt = QuestionnaireItemOperator._(
    valueString: '<',
    valueEnum: QuestionnaireItemOperatorEnum.lt,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Less Than',
    ),
  );

  /// ge
  static const QuestionnaireItemOperator ge = QuestionnaireItemOperator._(
    valueString: '>=',
    valueEnum: QuestionnaireItemOperatorEnum.ge,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Greater or Equals',
    ),
  );

  /// le
  static const QuestionnaireItemOperator le = QuestionnaireItemOperator._(
    valueString: '<=',
    valueEnum: QuestionnaireItemOperatorEnum.le,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Less or Equals',
    ),
  );

  /// List of all enum-like values
  static final List<QuestionnaireItemOperator> values = [
    exists,
    eq,
    ne,
    gt,
    lt,
    ge,
    le,
  ];

  /// Returns the enum value with an element attached
  QuestionnaireItemOperator withElement(Element? newElement) {
    return QuestionnaireItemOperator._(
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
  QuestionnaireItemOperator clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  QuestionnaireItemOperatorCopyWithImpl<QuestionnaireItemOperator>
      get copyWith =>
          QuestionnaireItemOperatorCopyWithImpl<QuestionnaireItemOperator>(
            this,
            (v) => v as QuestionnaireItemOperator,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class QuestionnaireItemOperatorCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  QuestionnaireItemOperatorCopyWithImpl(super._value, super._then);

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
      QuestionnaireItemOperator(
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
