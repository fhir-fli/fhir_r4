// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The media type of the expression language.
class ExpressionLanguage extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ExpressionLanguage._({
    required super.validatedValue,
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
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return ExpressionLanguage._(
      validatedValue: validated,
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
  factory ExpressionLanguage.empty() =>
      ExpressionLanguage._(validatedValue: '');

  /// Factory constructor to create [ExpressionLanguage] from JSON.
  factory ExpressionLanguage.fromJson(Map<String, dynamic> json) {
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
    return ExpressionLanguage._(validatedValue: value, element: element);
  }

  /// text_cql
  static final ExpressionLanguage text_cql = ExpressionLanguage._(
    validatedValue: 'text/cql',
    system: 'http://hl7.org/fhir/ValueSet/expression-language'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CQL'.toFhirString,
  );

  /// text_fhirpath
  static final ExpressionLanguage text_fhirpath = ExpressionLanguage._(
    validatedValue: 'text/fhirpath',
    system: 'http://hl7.org/fhir/ValueSet/expression-language'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'FHIRPath'.toFhirString,
  );

  /// application_x_fhir_query
  static final ExpressionLanguage application_x_fhir_query =
      ExpressionLanguage._(
    validatedValue: 'application/x-fhir-query',
    system: 'http://hl7.org/fhir/ValueSet/expression-language'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'FHIR Query'.toFhirString,
  );

  /// text_cql_identifier
  static final ExpressionLanguage text_cql_identifier = ExpressionLanguage._(
    validatedValue: 'text/cql-identifier',
    system: 'http://hl7.org/fhir/ValueSet/expression-language'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CQL Identifier'.toFhirString,
  );

  /// text_cql_expression
  static final ExpressionLanguage text_cql_expression = ExpressionLanguage._(
    validatedValue: 'text/cql-expression',
    system: 'http://hl7.org/fhir/ValueSet/expression-language'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CQL Expression'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ExpressionLanguage elementOnly =
      ExpressionLanguage._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ExpressionLanguage withElement(Element? newElement) {
    return ExpressionLanguage._(validatedValue: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  ExpressionLanguage copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ExpressionLanguage._(
      validatedValue: newValue ?? value,
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
