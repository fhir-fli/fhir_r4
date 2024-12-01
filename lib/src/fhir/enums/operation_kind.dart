// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Whether an operation is a normal operation or a query.
class OperationKind {
  // Private constructor for internal use (like enum)
  OperationKind._(this.fhirCode, {this.element});

  /// Factory constructor to create [OperationKind] from JSON.
  factory OperationKind.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OperationKind.elementOnly.withElement(element);
    }
    return OperationKind._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// OperationKind values
  /// operation
  static final OperationKind operation = OperationKind._(
    'operation',
  );

  /// query
  static final OperationKind query = OperationKind._(
    'query',
  );

  /// For instances where an Element is present but not value

  static final OperationKind elementOnly = OperationKind._('');

  /// List of all enum-like values
  static final List<OperationKind> values = [
    operation,
    query,
  ];

  /// Returns the enum value with an element attached
  OperationKind withElement(Element? newElement) {
    return OperationKind._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
