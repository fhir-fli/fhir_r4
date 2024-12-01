// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The possible types of research elements (E.g. Population, Exposure, Outcome).
class ResearchElementType {
  // Private constructor for internal use (like enum)
  ResearchElementType._(this.fhirCode, {this.element});

  /// Factory constructor to create [ResearchElementType] from JSON.
  factory ResearchElementType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchElementType.elementOnly.withElement(element);
    }
    return ResearchElementType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ResearchElementType values
  /// population
  static final ResearchElementType population = ResearchElementType._(
    'population',
  );

  /// exposure
  static final ResearchElementType exposure = ResearchElementType._(
    'exposure',
  );

  /// outcome
  static final ResearchElementType outcome = ResearchElementType._(
    'outcome',
  );

  /// For instances where an Element is present but not value

  static final ResearchElementType elementOnly = ResearchElementType._('');

  /// List of all enum-like values
  static final List<ResearchElementType> values = [
    population,
    exposure,
    outcome,
  ];

  /// Returns the enum value with an element attached
  ResearchElementType withElement(Element? newElement) {
    return ResearchElementType._(fhirCode, element: newElement);
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
