// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Possible group measure aggregates (E.g. Mean, Median).
@collection
class GroupMeasure {
  /// Constructor for internal use (like enum)
  GroupMeasure({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// GroupMeasure values
  /// mean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GroupMeasure mean = GroupMeasure(
    fhirCode: 'mean',
  );

  /// median
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GroupMeasure median = GroupMeasure(
    fhirCode: 'median',
  );

  /// mean_of_mean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GroupMeasure mean_of_mean = GroupMeasure(
    fhirCode: 'mean-of-mean',
  );

  /// mean_of_median
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GroupMeasure mean_of_median = GroupMeasure(
    fhirCode: 'mean-of-median',
  );

  /// median_of_mean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GroupMeasure median_of_mean = GroupMeasure(
    fhirCode: 'median-of-mean',
  );

  /// median_of_median
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GroupMeasure median_of_median = GroupMeasure(
    fhirCode: 'median-of-median',
  );

  /// For instances where an Element is present but not value

  static final GroupMeasure elementOnly = GroupMeasure();

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
    return GroupMeasure(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GroupMeasure.$fhirCode';
}
