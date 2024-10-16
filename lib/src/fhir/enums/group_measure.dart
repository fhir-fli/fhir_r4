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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const GroupMeasure(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static GroupMeasure fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupMeasure.elementOnly.withElement(element);
    }
    return GroupMeasure.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  GroupMeasure withElement(Element? newElement) {
    return GroupMeasure.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
