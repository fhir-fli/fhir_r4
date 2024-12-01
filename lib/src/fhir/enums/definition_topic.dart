// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// High-level categorization of the definition, used for searching, sorting, and filtering.
class DefinitionTopic {
  // Private constructor for internal use (like enum)
  DefinitionTopic._(this.fhirCode, {this.element});

  /// Factory constructor to create [DefinitionTopic] from JSON.
  factory DefinitionTopic.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DefinitionTopic.elementOnly.withElement(element);
    }
    return DefinitionTopic._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// DefinitionTopic values
  /// treatment
  static final DefinitionTopic treatment = DefinitionTopic._(
    'treatment',
  );

  /// education
  static final DefinitionTopic education = DefinitionTopic._(
    'education',
  );

  /// assessment
  static final DefinitionTopic assessment = DefinitionTopic._(
    'assessment',
  );

  /// For instances where an Element is present but not value

  static final DefinitionTopic elementOnly = DefinitionTopic._('');

  /// List of all enum-like values
  static final List<DefinitionTopic> values = [
    treatment,
    education,
    assessment,
  ];

  /// Returns the enum value with an element attached
  DefinitionTopic withElement(Element? newElement) {
    return DefinitionTopic._(fhirCode, element: newElement);
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
