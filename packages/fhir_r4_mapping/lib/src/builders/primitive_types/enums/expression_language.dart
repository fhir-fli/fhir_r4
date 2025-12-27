part of '../primitive_types.dart';

/// Actual enum for ExpressionLanguage
enum ExpressionLanguageBuilderEnum {
  /// text/cql
  textCql,

  /// text/fhirpath
  textFhirpath,

  /// application/x-fhir-query
  applicationXFhirQuery,

  /// text/cql-identifier
  textCqlIdentifier,

  /// text/cql-expression
  textCqlExpression,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ExpressionLanguageBuilderEnum.textCql:
        return 'text/cql';
      case ExpressionLanguageBuilderEnum.textFhirpath:
        return 'text/fhirpath';
      case ExpressionLanguageBuilderEnum.applicationXFhirQuery:
        return 'application/x-fhir-query';
      case ExpressionLanguageBuilderEnum.textCqlIdentifier:
        return 'text/cql-identifier';
      case ExpressionLanguageBuilderEnum.textCqlExpression:
        return 'text/cql-expression';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ExpressionLanguageBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ExpressionLanguageBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ExpressionLanguageBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'text/cql':
        return ExpressionLanguageBuilderEnum.textCql;
      case 'text/fhirpath':
        return ExpressionLanguageBuilderEnum.textFhirpath;
      case 'application/x-fhir-query':
        return ExpressionLanguageBuilderEnum.applicationXFhirQuery;
      case 'text/cql-identifier':
        return ExpressionLanguageBuilderEnum.textCqlIdentifier;
      case 'text/cql-expression':
        return ExpressionLanguageBuilderEnum.textCqlExpression;
    }
    return null;
  }
}

/// The media type of the expression language.
class ExpressionLanguageBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ExpressionLanguageBuilder._({
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
  factory ExpressionLanguageBuilder(
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
    final valueEnum = ExpressionLanguageBuilderEnum.fromString(
      valueString,
    );
    return ExpressionLanguageBuilder._(
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

  /// Create empty [ExpressionLanguageBuilder]
  /// with element only
  factory ExpressionLanguageBuilder.empty() =>
      ExpressionLanguageBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ExpressionLanguageBuilder] from JSON.
  factory ExpressionLanguageBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExpressionLanguageBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExpressionLanguageBuilder cannot be constructed from JSON.',
      );
    }
    return ExpressionLanguageBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ExpressionLanguageBuilder
  final ExpressionLanguageBuilderEnum? valueEnum;

  /// text_cql
  static ExpressionLanguageBuilder textCql = ExpressionLanguageBuilder._(
    valueString: 'text/cql',
    valueEnum: ExpressionLanguageBuilderEnum.textCql,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/expression-language',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CQL',
    ),
  );

  /// text_fhirpath
  static ExpressionLanguageBuilder textFhirpath = ExpressionLanguageBuilder._(
    valueString: 'text/fhirpath',
    valueEnum: ExpressionLanguageBuilderEnum.textFhirpath,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/expression-language',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'FHIRPath',
    ),
  );

  /// application_x_fhir_query
  static ExpressionLanguageBuilder applicationXFhirQuery =
      ExpressionLanguageBuilder._(
    valueString: 'application/x-fhir-query',
    valueEnum: ExpressionLanguageBuilderEnum.applicationXFhirQuery,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/expression-language',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'FHIR Query',
    ),
  );

  /// text_cql_identifier
  static ExpressionLanguageBuilder textCqlIdentifier =
      ExpressionLanguageBuilder._(
    valueString: 'text/cql-identifier',
    valueEnum: ExpressionLanguageBuilderEnum.textCqlIdentifier,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/expression-language',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CQL Identifier',
    ),
  );

  /// text_cql_expression
  static ExpressionLanguageBuilder textCqlExpression =
      ExpressionLanguageBuilder._(
    valueString: 'text/cql-expression',
    valueEnum: ExpressionLanguageBuilderEnum.textCqlExpression,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/expression-language',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CQL Expression',
    ),
  );

  /// For instances where an Element is present but not value
  static ExpressionLanguageBuilder elementOnly = ExpressionLanguageBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ExpressionLanguageBuilder> values = [
    textCql,
    textFhirpath,
    applicationXFhirQuery,
    textCqlIdentifier,
    textCqlExpression,
  ];

  /// Returns the enum value with an element attached
  ExpressionLanguageBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ExpressionLanguageBuilder._(
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
