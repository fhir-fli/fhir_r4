// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Possible group measure aggregates (E.g. Mean, Median).
enum GroupMeasure {
  /// Display: Mean
  /// Definition: Aggregated using Mean of participant values.
  mean('mean'),

  /// Display: Median
  /// Definition: Aggregated using Median of participant values.
  median('median'),

  /// Display: Mean of Study Means
  /// Definition: Aggregated using Mean of study mean values.
  mean_of_mean('mean-of-mean'),

  /// Display: Mean of Study Medins
  /// Definition: Aggregated using Mean of study median values.
  mean_of_median('mean-of-median'),

  /// Display: Median of Study Means
  /// Definition: Aggregated using Median of study mean values.
  median_of_mean('median-of-mean'),

  /// Display: Median of Study Medians
  /// Definition: Aggregated using Median of study median values.
  median_of_median('median-of-median'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const GroupMeasure(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [GroupMeasure] instances.
  static GroupMeasure fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupMeasure.elementOnly.withElement(element);
    }
    return GroupMeasure.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  GroupMeasure withElement(Element? newElement) {
    return GroupMeasure.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
