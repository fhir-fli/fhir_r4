// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The scoring type of the measure.
class MeasureScoring {
  // Private constructor for internal use (like enum)
  MeasureScoring._(this.fhirCode, {this.element});

  /// Factory constructor to create [MeasureScoring] from JSON.
  factory MeasureScoring.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureScoring.elementOnly.withElement(element);
    }
    return MeasureScoring._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MeasureScoring values
  /// proportion
  static final MeasureScoring proportion = MeasureScoring._(
    'proportion',
  );

  /// ratio
  static final MeasureScoring ratio = MeasureScoring._(
    'ratio',
  );

  /// continuous_variable
  static final MeasureScoring continuous_variable = MeasureScoring._(
    'continuous-variable',
  );

  /// cohort
  static final MeasureScoring cohort = MeasureScoring._(
    'cohort',
  );

  /// For instances where an Element is present but not value

  static final MeasureScoring elementOnly = MeasureScoring._('');

  /// List of all enum-like values
  static final List<MeasureScoring> values = [
    proportion,
    ratio,
    continuous_variable,
    cohort,
  ];

  /// Returns the enum value with an element attached
  MeasureScoring withElement(Element? newElement) {
    return MeasureScoring._(fhirCode, element: newElement);
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
