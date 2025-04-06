// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The media type of the expression language.
class ExpressionLanguage extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ExpressionLanguage._({
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
  factory ExpressionLanguage(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return ExpressionLanguage._(
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

  /// Create empty [ExpressionLanguage] with element only
  factory ExpressionLanguage.empty() => ExpressionLanguage._(valueString: '');

  /// Factory constructor to create [ExpressionLanguage]
  /// from JSON.
  factory ExpressionLanguage.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExpressionLanguage.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExpressionLanguage cannot be constructed from JSON.',
      );
    }
    return ExpressionLanguage._(
      valueString: value,
      element: element,
    );
  }

  /// text_cql
  static final ExpressionLanguage text_cql = ExpressionLanguage._(
    valueString: 'text/cql',
    system: 'http://hl7.org/fhir/ValueSet/expression-language'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CQL'.toFhirString,
  );

  /// text_fhirpath
  static final ExpressionLanguage text_fhirpath = ExpressionLanguage._(
    valueString: 'text/fhirpath',
    system: 'http://hl7.org/fhir/ValueSet/expression-language'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'FHIRPath'.toFhirString,
  );

  /// application_x_fhir_query
  static final ExpressionLanguage application_x_fhir_query =
      ExpressionLanguage._(
    valueString: 'application/x-fhir-query',
    system: 'http://hl7.org/fhir/ValueSet/expression-language'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'FHIR Query'.toFhirString,
  );

  /// text_cql_identifier
  static final ExpressionLanguage text_cql_identifier = ExpressionLanguage._(
    valueString: 'text/cql-identifier',
    system: 'http://hl7.org/fhir/ValueSet/expression-language'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CQL Identifier'.toFhirString,
  );

  /// text_cql_expression
  static final ExpressionLanguage text_cql_expression = ExpressionLanguage._(
    valueString: 'text/cql-expression',
    system: 'http://hl7.org/fhir/ValueSet/expression-language'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CQL Expression'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ExpressionLanguage elementOnly =
      ExpressionLanguage._(valueString: '');

  /// List of all enum-like values
  static final List<ExpressionLanguage> values = [
    text_cql,
    text_fhirpath,
    application_x_fhir_query,
    text_cql_identifier,
    text_cql_expression,
  ];

  /// Clones the current instance
  @override
  ExpressionLanguage clone() => ExpressionLanguage._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

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

  /// Creates a modified copy with updated properties.
  @override
  ExpressionLanguage copyWith({
    dynamic newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
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
    return ExpressionLanguage._(
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
