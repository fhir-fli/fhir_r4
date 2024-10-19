// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The media type of the expression language.
@collection
class ExpressionLanguage {
  /// Constructor for internal use (like enum)
  ExpressionLanguage({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ExpressionLanguage values
  /// text_cql
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExpressionLanguage text_cql = ExpressionLanguage(
    fhirCode: 'text/cql',
  );

  /// text_fhirpath
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExpressionLanguage text_fhirpath = ExpressionLanguage(
    fhirCode: 'text/fhirpath',
  );

  /// application_x_fhir_query
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExpressionLanguage application_x_fhir_query = ExpressionLanguage(
    fhirCode: 'application/x-fhir-query',
  );

  /// text_cql_identifier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExpressionLanguage text_cql_identifier = ExpressionLanguage(
    fhirCode: 'text/cql-identifier',
  );

  /// text_cql_expression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExpressionLanguage text_cql_expression = ExpressionLanguage(
    fhirCode: 'text/cql-expression',
  );

  /// For instances where an Element is present but not value

  static final ExpressionLanguage elementOnly = ExpressionLanguage();

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
    return ExpressionLanguage(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExpressionLanguage.$fhirCode';
}
