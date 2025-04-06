// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The media type of the expression language.
class ExpressionLanguageBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ExpressionLanguageBuilder._({
    required super.valueString,
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
    return ExpressionLanguageBuilder._(
      valueString: valueString,
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

  /// Create empty [ExpressionLanguageBuilder] with element only
  factory ExpressionLanguageBuilder.empty() =>
      ExpressionLanguageBuilder._(valueString: '');

  /// Factory constructor to create [ExpressionLanguageBuilder]
  /// from JSON.
  factory ExpressionLanguageBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExpressionLanguageBuilder.elementOnly.withElement(element);
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

  /// text_cql
  static ExpressionLanguageBuilder text_cql = ExpressionLanguageBuilder._(
    valueString: 'text/cql',
    system: 'http://hl7.org/fhir/ValueSet/expression-language'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CQL'.toFhirStringBuilder,
  );

  /// text_fhirpath
  static ExpressionLanguageBuilder text_fhirpath = ExpressionLanguageBuilder._(
    valueString: 'text/fhirpath',
    system: 'http://hl7.org/fhir/ValueSet/expression-language'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'FHIRPath'.toFhirStringBuilder,
  );

  /// application_x_fhir_query
  static ExpressionLanguageBuilder application_x_fhir_query =
      ExpressionLanguageBuilder._(
    valueString: 'application/x-fhir-query',
    system: 'http://hl7.org/fhir/ValueSet/expression-language'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'FHIR Query'.toFhirStringBuilder,
  );

  /// text_cql_identifier
  static ExpressionLanguageBuilder text_cql_identifier =
      ExpressionLanguageBuilder._(
    valueString: 'text/cql-identifier',
    system: 'http://hl7.org/fhir/ValueSet/expression-language'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CQL Identifier'.toFhirStringBuilder,
  );

  /// text_cql_expression
  static ExpressionLanguageBuilder text_cql_expression =
      ExpressionLanguageBuilder._(
    valueString: 'text/cql-expression',
    system: 'http://hl7.org/fhir/ValueSet/expression-language'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CQL Expression'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ExpressionLanguageBuilder elementOnly =
      ExpressionLanguageBuilder._(valueString: '');

  /// List of all enum-like values
  static List<ExpressionLanguageBuilder> values = [
    text_cql,
    text_fhirpath,
    application_x_fhir_query,
    text_cql_identifier,
    text_cql_expression,
  ];

  /// Clones the current instance
  @override
  ExpressionLanguageBuilder clone() => ExpressionLanguageBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

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

  /// Creates a modified copy with updated properties.
  @override
  ExpressionLanguageBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for ExpressionLanguage: $newValue',
      );
    }
    return ExpressionLanguageBuilder._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
