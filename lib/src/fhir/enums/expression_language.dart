import 'package:json_annotation/json_annotation.dart';

/// The media type of the expression language.
enum ExpressionLanguage {
  /// Display: CQL
  /// Definition: Clinical Quality Language.
  @JsonValue('text/cql')
  text_cql,

  /// Display: FHIRPath
  /// Definition: FHIRPath.
  @JsonValue('text/fhirpath')
  text_fhirpath,

  /// Display: FHIR Query
  /// Definition: FHIR's RESTful query syntax - typically independent of base URL.
  @JsonValue('application/x-fhir-query')
  application_x_fhir_query,

  /// Display: CQL Identifier
  /// Definition: A valid Clinical Quality Language identifier.
  @JsonValue('text/cql-identifier')
  text_cql_identifier,

  /// Display: CQL Expression
  /// Definition: A Clinical Quality Language expression.
  @JsonValue('text/cql-expression')
  text_cql_expression,
  ;

  @override
  String toString() {
    switch (this) {
      case text_cql:
        return 'text/cql';
      case text_fhirpath:
        return 'text/fhirpath';
      case application_x_fhir_query:
        return 'application/x-fhir-query';
      case text_cql_identifier:
        return 'text/cql-identifier';
      case text_cql_expression:
        return 'text/cql-expression';
    }
  }

  String toJson() => toString();
  static ExpressionLanguage fromString(String str) {
    switch (str) {
      case 'text/cql':
        return ExpressionLanguage.text_cql;
      case 'text/fhirpath':
        return ExpressionLanguage.text_fhirpath;
      case 'application/x-fhir-query':
        return ExpressionLanguage.application_x_fhir_query;
      case 'text/cql-identifier':
        return ExpressionLanguage.text_cql_identifier;
      case 'text/cql-expression':
        return ExpressionLanguage.text_cql_expression;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ExpressionLanguage fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
