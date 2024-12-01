// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes Example Coverage Financial Exception Codes.
class ExampleCoverageFinancialExceptionCodes {
  // Private constructor for internal use (like enum)
  ExampleCoverageFinancialExceptionCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [ExampleCoverageFinancialExceptionCodes] from JSON.
  factory ExampleCoverageFinancialExceptionCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleCoverageFinancialExceptionCodes.elementOnly
          .withElement(element);
    }
    return ExampleCoverageFinancialExceptionCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ExampleCoverageFinancialExceptionCodes values
  /// retired
  static final ExampleCoverageFinancialExceptionCodes retired =
      ExampleCoverageFinancialExceptionCodes._(
    'retired',
  );

  /// foster
  static final ExampleCoverageFinancialExceptionCodes foster =
      ExampleCoverageFinancialExceptionCodes._(
    'foster',
  );

  /// For instances where an Element is present but not value

  static final ExampleCoverageFinancialExceptionCodes elementOnly =
      ExampleCoverageFinancialExceptionCodes._('');

  /// List of all enum-like values
  static final List<ExampleCoverageFinancialExceptionCodes> values = [
    retired,
    foster,
  ];

  /// Returns the enum value with an element attached
  ExampleCoverageFinancialExceptionCodes withElement(Element? newElement) {
    return ExampleCoverageFinancialExceptionCodes._(fhirCode,
        element: newElement);
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
