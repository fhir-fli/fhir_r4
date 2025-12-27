part of '../primitive_types.dart';

/// Actual enum for QuestionnaireItemOperator
enum QuestionnaireItemOperatorBuilderEnum {
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
      case QuestionnaireItemOperatorBuilderEnum.exists:
        return 'exists';
      case QuestionnaireItemOperatorBuilderEnum.eq:
        return '=';
      case QuestionnaireItemOperatorBuilderEnum.ne:
        return '!=';
      case QuestionnaireItemOperatorBuilderEnum.gt:
        return '>';
      case QuestionnaireItemOperatorBuilderEnum.lt:
        return '<';
      case QuestionnaireItemOperatorBuilderEnum.ge:
        return '>=';
      case QuestionnaireItemOperatorBuilderEnum.le:
        return '<=';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static QuestionnaireItemOperatorBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return QuestionnaireItemOperatorBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static QuestionnaireItemOperatorBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'exists':
        return QuestionnaireItemOperatorBuilderEnum.exists;
      case '=':
        return QuestionnaireItemOperatorBuilderEnum.eq;
      case '!=':
        return QuestionnaireItemOperatorBuilderEnum.ne;
      case '>':
        return QuestionnaireItemOperatorBuilderEnum.gt;
      case '<':
        return QuestionnaireItemOperatorBuilderEnum.lt;
      case '>=':
        return QuestionnaireItemOperatorBuilderEnum.ge;
      case '<=':
        return QuestionnaireItemOperatorBuilderEnum.le;
    }
    return null;
  }
}

/// The criteria by which a question is enabled.
class QuestionnaireItemOperatorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  QuestionnaireItemOperatorBuilder._({
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
  factory QuestionnaireItemOperatorBuilder(
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
    final valueEnum = QuestionnaireItemOperatorBuilderEnum.fromString(
      valueString,
    );
    return QuestionnaireItemOperatorBuilder._(
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

  /// Create empty [QuestionnaireItemOperatorBuilder]
  /// with element only
  factory QuestionnaireItemOperatorBuilder.empty() =>
      QuestionnaireItemOperatorBuilder._(valueString: null);

  /// Factory constructor to create
  /// [QuestionnaireItemOperatorBuilder] from JSON.
  factory QuestionnaireItemOperatorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireItemOperatorBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuestionnaireItemOperatorBuilder cannot be constructed from JSON.',
      );
    }
    return QuestionnaireItemOperatorBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for QuestionnaireItemOperatorBuilder
  final QuestionnaireItemOperatorBuilderEnum? valueEnum;

  /// exists
  static QuestionnaireItemOperatorBuilder exists =
      QuestionnaireItemOperatorBuilder._(
    valueString: 'exists',
    valueEnum: QuestionnaireItemOperatorBuilderEnum.exists,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Exists',
    ),
  );

  /// eq
  static QuestionnaireItemOperatorBuilder eq =
      QuestionnaireItemOperatorBuilder._(
    valueString: '=',
    valueEnum: QuestionnaireItemOperatorBuilderEnum.eq,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Equals',
    ),
  );

  /// ne
  static QuestionnaireItemOperatorBuilder ne =
      QuestionnaireItemOperatorBuilder._(
    valueString: '!=',
    valueEnum: QuestionnaireItemOperatorBuilderEnum.ne,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Equals',
    ),
  );

  /// gt
  static QuestionnaireItemOperatorBuilder gt =
      QuestionnaireItemOperatorBuilder._(
    valueString: '>',
    valueEnum: QuestionnaireItemOperatorBuilderEnum.gt,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Greater Than',
    ),
  );

  /// lt
  static QuestionnaireItemOperatorBuilder lt =
      QuestionnaireItemOperatorBuilder._(
    valueString: '<',
    valueEnum: QuestionnaireItemOperatorBuilderEnum.lt,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Less Than',
    ),
  );

  /// ge
  static QuestionnaireItemOperatorBuilder ge =
      QuestionnaireItemOperatorBuilder._(
    valueString: '>=',
    valueEnum: QuestionnaireItemOperatorBuilderEnum.ge,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Greater or Equals',
    ),
  );

  /// le
  static QuestionnaireItemOperatorBuilder le =
      QuestionnaireItemOperatorBuilder._(
    valueString: '<=',
    valueEnum: QuestionnaireItemOperatorBuilderEnum.le,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Less or Equals',
    ),
  );

  /// For instances where an Element is present but not value
  static QuestionnaireItemOperatorBuilder elementOnly =
      QuestionnaireItemOperatorBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<QuestionnaireItemOperatorBuilder> values = [
    exists,
    eq,
    ne,
    gt,
    lt,
    ge,
    le,
  ];

  /// Returns the enum value with an element attached
  QuestionnaireItemOperatorBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return QuestionnaireItemOperatorBuilder._(
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
