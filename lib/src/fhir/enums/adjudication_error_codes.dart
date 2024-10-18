// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of adjudication codes.
enum AdjudicationErrorCodes {
  /// Display: Missing Identifier
  /// Definition: Missing Identifier
  a001('a001'),

  /// Display: Missing Creation Date
  /// Definition: Missing Creation Date
  a002('a002'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AdjudicationErrorCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AdjudicationErrorCodes] instances.
  static AdjudicationErrorCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdjudicationErrorCodes.elementOnly.withElement(element);
    }
    return AdjudicationErrorCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AdjudicationErrorCodes withElement(Element? newElement) {
    return AdjudicationErrorCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
