// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example set of codes that can be used for billing purposes.
class ChargeItemCode {
  // Private constructor for internal use (like enum)
  ChargeItemCode._(this.fhirCode, {this.element});

  /// Factory constructor to create [ChargeItemCode] from JSON.
  factory ChargeItemCode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ChargeItemCode.elementOnly.withElement(element);
    }
    return ChargeItemCode._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ChargeItemCode values
  /// value1100
  static final ChargeItemCode value1100 = ChargeItemCode._(
    '1100',
  );

  /// value1210
  static final ChargeItemCode value1210 = ChargeItemCode._(
    '1210',
  );

  /// value1320
  static final ChargeItemCode value1320 = ChargeItemCode._(
    '1320',
  );

  /// For instances where an Element is present but not value

  static final ChargeItemCode elementOnly = ChargeItemCode._('');

  /// List of all enum-like values
  static final List<ChargeItemCode> values = [
    value1100,
    value1210,
    value1320,
  ];

  /// Returns the enum value with an element attached
  ChargeItemCode withElement(Element? newElement) {
    return ChargeItemCode._(fhirCode, element: newElement);
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
