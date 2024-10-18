// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The quality of how direct the match is.
enum EvidenceDirectness {
  /// Display: Low quality match between observed and intended variable
  /// Definition: Low matching quality between observed and intended variable, so very serious concern for indirectness in evidence interpretation.
  low('low'),

  /// Display: Moderate quality match between observed and intended variable
  /// Definition: Moderate matching quality between observed and intended variable, so serious concern for indirectness in evidence interpretation.
  moderate('moderate'),

  /// Display: High quality match between observed and intended variable
  /// Definition: High matching quality between observed and intended variable, so little concern for indirectness in evidence interpretation.
  high('high'),

  /// Display: Exact match between observed and intended variable
  /// Definition: Exact matching quality between observed and intended variable, so no concern for indirectness in evidence interpretation.
  exact('exact'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const EvidenceDirectness(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [EvidenceDirectness] instances.
  static EvidenceDirectness fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceDirectness.elementOnly.withElement(element);
    }
    return EvidenceDirectness.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  EvidenceDirectness withElement(Element? newElement) {
    return EvidenceDirectness.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
