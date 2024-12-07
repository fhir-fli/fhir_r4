// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The media type of the expression language.
class ExpressionLanguage extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ExpressionLanguage._(super.value, [super.element]);

  /// Factory constructor to create [ExpressionLanguage] from JSON.
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
    return ExpressionLanguage._(value, element);
  }

  /// text_cql
  static final ExpressionLanguage text_cql = ExpressionLanguage._(
    'text/cql',
  );

  /// text_fhirpath
  static final ExpressionLanguage text_fhirpath = ExpressionLanguage._(
    'text/fhirpath',
  );

  /// application_x_fhir_query
  static final ExpressionLanguage application_x_fhir_query =
      ExpressionLanguage._(
    'application/x-fhir-query',
  );

  /// text_cql_identifier
  static final ExpressionLanguage text_cql_identifier = ExpressionLanguage._(
    'text/cql-identifier',
  );

  /// text_cql_expression
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

  /// Clones the current instance
  @override
  ExpressionLanguage clone() => ExpressionLanguage._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ExpressionLanguage withElement(Element? newElement) {
    return ExpressionLanguage._(value, newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ExpressionLanguage._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
