part of '../primitive_types.dart';

/// Actual enum for AssertionResponseTypes
enum AssertionResponseTypesBuilderEnum {
  /// okay
  okay,

  /// created
  created,

  /// noContent
  noContent,

  /// notModified
  notModified,

  /// bad
  bad,

  /// forbidden
  forbidden,

  /// notFound
  notFound,

  /// methodNotAllowed
  methodNotAllowed,

  /// conflict
  conflict,

  /// gone
  gone,

  /// preconditionFailed
  preconditionFailed,

  /// unprocessable
  unprocessable,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AssertionResponseTypesBuilderEnum.okay:
        return 'okay';
      case AssertionResponseTypesBuilderEnum.created:
        return 'created';
      case AssertionResponseTypesBuilderEnum.noContent:
        return 'noContent';
      case AssertionResponseTypesBuilderEnum.notModified:
        return 'notModified';
      case AssertionResponseTypesBuilderEnum.bad:
        return 'bad';
      case AssertionResponseTypesBuilderEnum.forbidden:
        return 'forbidden';
      case AssertionResponseTypesBuilderEnum.notFound:
        return 'notFound';
      case AssertionResponseTypesBuilderEnum.methodNotAllowed:
        return 'methodNotAllowed';
      case AssertionResponseTypesBuilderEnum.conflict:
        return 'conflict';
      case AssertionResponseTypesBuilderEnum.gone:
        return 'gone';
      case AssertionResponseTypesBuilderEnum.preconditionFailed:
        return 'preconditionFailed';
      case AssertionResponseTypesBuilderEnum.unprocessable:
        return 'unprocessable';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AssertionResponseTypesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AssertionResponseTypesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AssertionResponseTypesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'okay':
        return AssertionResponseTypesBuilderEnum.okay;
      case 'created':
        return AssertionResponseTypesBuilderEnum.created;
      case 'noContent':
        return AssertionResponseTypesBuilderEnum.noContent;
      case 'notModified':
        return AssertionResponseTypesBuilderEnum.notModified;
      case 'bad':
        return AssertionResponseTypesBuilderEnum.bad;
      case 'forbidden':
        return AssertionResponseTypesBuilderEnum.forbidden;
      case 'notFound':
        return AssertionResponseTypesBuilderEnum.notFound;
      case 'methodNotAllowed':
        return AssertionResponseTypesBuilderEnum.methodNotAllowed;
      case 'conflict':
        return AssertionResponseTypesBuilderEnum.conflict;
      case 'gone':
        return AssertionResponseTypesBuilderEnum.gone;
      case 'preconditionFailed':
        return AssertionResponseTypesBuilderEnum.preconditionFailed;
      case 'unprocessable':
        return AssertionResponseTypesBuilderEnum.unprocessable;
    }
    return null;
  }
}

/// The type of response code to use for assertion.
class AssertionResponseTypesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AssertionResponseTypesBuilder._({
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
  factory AssertionResponseTypesBuilder(
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
    final valueEnum = AssertionResponseTypesBuilderEnum.fromString(
      valueString,
    );
    return AssertionResponseTypesBuilder._(
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

  /// Create empty [AssertionResponseTypesBuilder]
  /// with element only
  factory AssertionResponseTypesBuilder.empty() =>
      AssertionResponseTypesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AssertionResponseTypesBuilder] from JSON.
  factory AssertionResponseTypesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionResponseTypesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AssertionResponseTypesBuilder cannot be constructed from JSON.',
      );
    }
    return AssertionResponseTypesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for AssertionResponseTypesBuilder
  final AssertionResponseTypesBuilderEnum? valueEnum;

  /// okay
  static AssertionResponseTypesBuilder okay = AssertionResponseTypesBuilder._(
    valueString: 'okay',
    valueEnum: AssertionResponseTypesBuilderEnum.okay,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'okay',
    ),
  );

  /// created
  static AssertionResponseTypesBuilder created =
      AssertionResponseTypesBuilder._(
    valueString: 'created',
    valueEnum: AssertionResponseTypesBuilderEnum.created,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'created',
    ),
  );

  /// noContent
  static AssertionResponseTypesBuilder noContent =
      AssertionResponseTypesBuilder._(
    valueString: 'noContent',
    valueEnum: AssertionResponseTypesBuilderEnum.noContent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'noContent',
    ),
  );

  /// notModified
  static AssertionResponseTypesBuilder notModified =
      AssertionResponseTypesBuilder._(
    valueString: 'notModified',
    valueEnum: AssertionResponseTypesBuilderEnum.notModified,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'notModified',
    ),
  );

  /// bad
  static AssertionResponseTypesBuilder bad = AssertionResponseTypesBuilder._(
    valueString: 'bad',
    valueEnum: AssertionResponseTypesBuilderEnum.bad,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'bad',
    ),
  );

  /// forbidden
  static AssertionResponseTypesBuilder forbidden =
      AssertionResponseTypesBuilder._(
    valueString: 'forbidden',
    valueEnum: AssertionResponseTypesBuilderEnum.forbidden,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'forbidden',
    ),
  );

  /// notFound
  static AssertionResponseTypesBuilder notFound =
      AssertionResponseTypesBuilder._(
    valueString: 'notFound',
    valueEnum: AssertionResponseTypesBuilderEnum.notFound,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'notFound',
    ),
  );

  /// methodNotAllowed
  static AssertionResponseTypesBuilder methodNotAllowed =
      AssertionResponseTypesBuilder._(
    valueString: 'methodNotAllowed',
    valueEnum: AssertionResponseTypesBuilderEnum.methodNotAllowed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'methodNotAllowed',
    ),
  );

  /// conflict
  static AssertionResponseTypesBuilder conflict =
      AssertionResponseTypesBuilder._(
    valueString: 'conflict',
    valueEnum: AssertionResponseTypesBuilderEnum.conflict,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'conflict',
    ),
  );

  /// gone
  static AssertionResponseTypesBuilder gone = AssertionResponseTypesBuilder._(
    valueString: 'gone',
    valueEnum: AssertionResponseTypesBuilderEnum.gone,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'gone',
    ),
  );

  /// preconditionFailed
  static AssertionResponseTypesBuilder preconditionFailed =
      AssertionResponseTypesBuilder._(
    valueString: 'preconditionFailed',
    valueEnum: AssertionResponseTypesBuilderEnum.preconditionFailed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'preconditionFailed',
    ),
  );

  /// unprocessable
  static AssertionResponseTypesBuilder unprocessable =
      AssertionResponseTypesBuilder._(
    valueString: 'unprocessable',
    valueEnum: AssertionResponseTypesBuilderEnum.unprocessable,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'unprocessable',
    ),
  );

  /// For instances where an Element is present but not value
  static AssertionResponseTypesBuilder elementOnly =
      AssertionResponseTypesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<AssertionResponseTypesBuilder> values = [
    okay,
    created,
    noContent,
    notModified,
    bad,
    forbidden,
    notFound,
    methodNotAllowed,
    conflict,
    gone,
    preconditionFailed,
    unprocessable,
  ];

  /// Returns the enum value with an element attached
  AssertionResponseTypesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AssertionResponseTypesBuilder._(
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
