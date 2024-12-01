// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Extra measures defined for a Medicinal Product, such as a requirement to conduct post-authorisation studies.
class SpecialMeasures {
  // Private constructor for internal use (like enum)
  SpecialMeasures._(this.fhirCode, {this.element});

  /// Factory constructor to create [SpecialMeasures] from JSON.
  factory SpecialMeasures.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecialMeasures.elementOnly.withElement(element);
    }
    return SpecialMeasures._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SpecialMeasures values
  /// Post_authorisationStudies
  static final SpecialMeasures Post_authorisationStudies = SpecialMeasures._(
    'Post-authorisationStudies',
  );

  /// For instances where an Element is present but not value

  static final SpecialMeasures elementOnly = SpecialMeasures._('');

  /// List of all enum-like values
  static final List<SpecialMeasures> values = [
    Post_authorisationStudies,
  ];

  /// Returns the enum value with an element attached
  SpecialMeasures withElement(Element? newElement) {
    return SpecialMeasures._(fhirCode, element: newElement);
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
