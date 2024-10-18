// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Whether an operation is a normal operation or a query.
enum OperationKind {
  /// Display: Operation
  /// Definition: This operation is invoked as an operation.
  operation('operation'),

  /// Display: Query
  /// Definition: This operation is a named query, invoked using the search mechanism.
  query('query'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const OperationKind(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [OperationKind] instances.
  static OperationKind fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OperationKind.elementOnly.withElement(element);
    }
    return OperationKind.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  OperationKind withElement(Element? newElement) {
    return OperationKind.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
