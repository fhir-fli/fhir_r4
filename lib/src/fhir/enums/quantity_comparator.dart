// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How the Quantity should be understood and represented.
class QuantityComparator {
  // Private constructor for internal use (like enum)
  QuantityComparator._(this.fhirCode, {this.element});

  /// Factory constructor to create [QuantityComparator] from JSON.
  factory QuantityComparator.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuantityComparator.elementOnly.withElement(element);
    }
    return QuantityComparator._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// QuantityComparator values
  /// lt
  static final QuantityComparator lt = QuantityComparator._(
    '<',
  );

  /// le
  static final QuantityComparator le = QuantityComparator._(
    '<=',
  );

  /// ge
  static final QuantityComparator ge = QuantityComparator._(
    '>=',
  );

  /// gt
  static final QuantityComparator gt = QuantityComparator._(
    '>',
  );

  /// For instances where an Element is present but not value

  static final QuantityComparator elementOnly = QuantityComparator._('');

  /// List of all enum-like values
  static final List<QuantityComparator> values = [
    lt,
    le,
    ge,
    gt,
  ];

  /// Returns the enum value with an element attached
  QuantityComparator withElement(Element? newElement) {
    return QuantityComparator._(fhirCode, element: newElement);
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
