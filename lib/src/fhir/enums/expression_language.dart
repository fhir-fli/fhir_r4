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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ExpressionLanguage(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ExpressionLanguage fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExpressionLanguage.elementOnly.withElement(element);
    }
    return ExpressionLanguage.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ExpressionLanguage withElement(Element? newElement) {
    return ExpressionLanguage.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
