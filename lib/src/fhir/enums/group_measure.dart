// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Possible group measure aggregates (E.g. Mean, Median).
class GroupMeasure {
  // Private constructor for internal use (like enum)
  GroupMeasure._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// GroupMeasure values
  /// mean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GroupMeasure mean = GroupMeasure._(
    'mean',
  );

  /// median
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GroupMeasure median = GroupMeasure._(
    'median',
  );

  /// mean_of_mean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GroupMeasure mean_of_mean = GroupMeasure._(
    'mean-of-mean',
  );

  /// mean_of_median
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GroupMeasure mean_of_median = GroupMeasure._(
    'mean-of-median',
  );

  /// median_of_mean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GroupMeasure median_of_mean = GroupMeasure._(
    'median-of-mean',
  );

  /// median_of_median
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GroupMeasure median_of_median = GroupMeasure._(
    'median-of-median',
  );

  /// For instances where an Element is present but not value

  static final GroupMeasure elementOnly = GroupMeasure._('');

  /// List of all enum-like values
  static final List<GroupMeasure> values = [
    mean,
    median,
    mean_of_mean,
    mean_of_median,
    median_of_mean,
    median_of_median,
  ];

  /// Returns the enum value with an element attached
  GroupMeasure withElement(Element? newElement) {
    return GroupMeasure._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [GroupMeasure] from JSON.
  static GroupMeasure fromJson(Map<String, dynamic> json) {
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

  /// String representation
  @override
  String toString() => fhirCode;
}
