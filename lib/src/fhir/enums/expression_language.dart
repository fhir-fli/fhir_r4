// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The media type of the expression language.
enum ExpressionLanguage {
  /// Display: CQL
  /// Definition: Clinical Quality Language.
  text_cql('text/cql'),

  /// Display: FHIRPath
  /// Definition: FHIRPath.
  text_fhirpath('text/fhirpath'),

  /// Display: FHIR Query
  /// Definition: FHIR's RESTful query syntax - typically independent of base URL.
  application_x_fhir_query('application/x-fhir-query'),

  /// Display: CQL Identifier
  /// Definition: A valid Clinical Quality Language identifier.
  text_cql_identifier('text/cql-identifier'),

  /// Display: CQL Expression
  /// Definition: A Clinical Quality Language expression.
  text_cql_expression('text/cql-expression'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ExpressionLanguage(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ExpressionLanguage] instances.
  static ExpressionLanguage fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExpressionLanguage.elementOnly.withElement(
        element,
      );
    }
    return ExpressionLanguage.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ExpressionLanguage withElement(Element? newElement) {
    return ExpressionLanguage.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
