// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The media type of the expression language.
class ExpressionLanguage {
  // Private constructor for internal use (like enum)
  ExpressionLanguage._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ExpressionLanguage values
  /// text_cql
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExpressionLanguage text_cql = ExpressionLanguage._(
    'text/cql',
  );

  /// text_fhirpath
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExpressionLanguage text_fhirpath = ExpressionLanguage._(
    'text/fhirpath',
  );

  /// application_x_fhir_query
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExpressionLanguage application_x_fhir_query =
      ExpressionLanguage._(
    'application/x-fhir-query',
  );

  /// text_cql_identifier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExpressionLanguage text_cql_identifier = ExpressionLanguage._(
    'text/cql-identifier',
  );

  /// text_cql_expression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExpressionLanguage text_cql_expression = ExpressionLanguage._(
    'text/cql-expression',
  );

  /// For instances where an Element is present but not value

  static final ExpressionLanguage elementOnly = ExpressionLanguage._('');

  /// List of all enum-like values
  static final List<ExpressionLanguage> values = [
    text_cql,
    text_fhirpath,
    application_x_fhir_query,
    text_cql_identifier,
    text_cql_expression,
  ];

  /// Returns the enum value with an element attached
  ExpressionLanguage withElement(Element? newElement) {
    return ExpressionLanguage._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ExpressionLanguage] from JSON.
  static ExpressionLanguage fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExpressionLanguage.elementOnly.withElement(element);
    }
    return ExpressionLanguage.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
