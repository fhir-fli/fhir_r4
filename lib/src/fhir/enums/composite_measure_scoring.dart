// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The composite scoring method of the measure.
class CompositeMeasureScoring {
  // Private constructor for internal use (like enum)
  CompositeMeasureScoring._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CompositeMeasureScoring values
  /// opportunity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositeMeasureScoring opportunity = CompositeMeasureScoring._(
    'opportunity',
  );

  /// all_or_nothing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositeMeasureScoring all_or_nothing =
      CompositeMeasureScoring._(
    'all-or-nothing',
  );

  /// linear
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositeMeasureScoring linear = CompositeMeasureScoring._(
    'linear',
  );

  /// weighted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositeMeasureScoring weighted = CompositeMeasureScoring._(
    'weighted',
  );

  /// For instances where an Element is present but not value

  static final CompositeMeasureScoring elementOnly =
      CompositeMeasureScoring._('');

  /// List of all enum-like values
  static final List<CompositeMeasureScoring> values = [
    opportunity,
    all_or_nothing,
    linear,
    weighted,
  ];

  /// Returns the enum value with an element attached
  CompositeMeasureScoring withElement(Element? newElement) {
    return CompositeMeasureScoring._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CompositeMeasureScoring] from JSON.
  static CompositeMeasureScoring fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositeMeasureScoring.elementOnly.withElement(element);
    }
    return CompositeMeasureScoring.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CompositeMeasureScoring.$fhirCode';
}
