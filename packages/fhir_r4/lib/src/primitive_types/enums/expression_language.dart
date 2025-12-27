part of '../primitive_types.dart';

/// Actual enum for ExpressionLanguage
enum ExpressionLanguageEnum {
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
      case ExpressionLanguageEnum.textCql:
        return 'text/cql';
      case ExpressionLanguageEnum.textFhirpath:
        return 'text/fhirpath';
      case ExpressionLanguageEnum.applicationXFhirQuery:
        return 'application/x-fhir-query';
      case ExpressionLanguageEnum.textCqlIdentifier:
        return 'text/cql-identifier';
      case ExpressionLanguageEnum.textCqlExpression:
        return 'text/cql-expression';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ExpressionLanguageEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ExpressionLanguageEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ExpressionLanguageEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'text/cql':
        return ExpressionLanguageEnum.textCql;
      case 'text/fhirpath':
        return ExpressionLanguageEnum.textFhirpath;
      case 'application/x-fhir-query':
        return ExpressionLanguageEnum.applicationXFhirQuery;
      case 'text/cql-identifier':
        return ExpressionLanguageEnum.textCqlIdentifier;
      case 'text/cql-expression':
        return ExpressionLanguageEnum.textCqlExpression;
    }
    return null;
  }
}

/// The media type of the expression language.
class ExpressionLanguage extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ExpressionLanguage._({
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
  factory ExpressionLanguage(
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
    final valueEnum = ExpressionLanguageEnum.fromString(valueString);
    return ExpressionLanguage._(
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

  /// Factory constructor to create [ExpressionLanguage]
  /// from JSON.
  factory ExpressionLanguage.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ExpressionLanguageEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExpressionLanguage._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExpressionLanguage cannot be constructed from JSON.',
      );
    }
    return ExpressionLanguage._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ExpressionLanguage
  final ExpressionLanguageEnum? valueEnum;

  /// text_cql
  static const ExpressionLanguage textCql = ExpressionLanguage._(
    valueString: 'text/cql',
    valueEnum: ExpressionLanguageEnum.textCql,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/expression-language',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CQL',
    ),
  );

  /// text_fhirpath
  static const ExpressionLanguage textFhirpath = ExpressionLanguage._(
    valueString: 'text/fhirpath',
    valueEnum: ExpressionLanguageEnum.textFhirpath,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/expression-language',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'FHIRPath',
    ),
  );

  /// application_x_fhir_query
  static const ExpressionLanguage applicationXFhirQuery = ExpressionLanguage._(
    valueString: 'application/x-fhir-query',
    valueEnum: ExpressionLanguageEnum.applicationXFhirQuery,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/expression-language',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'FHIR Query',
    ),
  );

  /// text_cql_identifier
  static const ExpressionLanguage textCqlIdentifier = ExpressionLanguage._(
    valueString: 'text/cql-identifier',
    valueEnum: ExpressionLanguageEnum.textCqlIdentifier,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/expression-language',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CQL Identifier',
    ),
  );

  /// text_cql_expression
  static const ExpressionLanguage textCqlExpression = ExpressionLanguage._(
    valueString: 'text/cql-expression',
    valueEnum: ExpressionLanguageEnum.textCqlExpression,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/expression-language',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CQL Expression',
    ),
  );

  /// List of all enum-like values
  static final List<ExpressionLanguage> values = [
    textCql,
    textFhirpath,
    applicationXFhirQuery,
    textCqlIdentifier,
    textCqlExpression,
  ];

  /// Returns the enum value with an element attached
  ExpressionLanguage withElement(Element? newElement) {
    return ExpressionLanguage._(
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
  ExpressionLanguage clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ExpressionLanguageCopyWithImpl<ExpressionLanguage> get copyWith =>
      ExpressionLanguageCopyWithImpl<ExpressionLanguage>(
        this,
        (v) => v as ExpressionLanguage,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ExpressionLanguageCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ExpressionLanguageCopyWithImpl(super._value, super._then);

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
      ExpressionLanguage(
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
