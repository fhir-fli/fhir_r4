// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Possible group measure aggregates (E.g. Mean, Median).
@Entity()
class GroupMeasure extends FhirCode {
  /// Factory constructor to create [GroupMeasure] from JSON.
  factory GroupMeasure.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupMeasure.elementOnly(element);
    }
    if (values.contains(value)) {
      return GroupMeasure._(value, element);
    }
    throw ArgumentError(
      'GroupMeasure.fromJson: JSON value is not a valid value',
    );
  }

  /// mean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GroupMeasure.mean([this.element])
      : dbValue = 'mean',
        super('mean', element);

  /// median
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GroupMeasure.median([this.element])
      : dbValue = 'median',
        super('median', element);

  /// mean_of_mean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GroupMeasure.mean_of_mean([this.element])
      : dbValue = 'mean-of-mean',
        super('mean-of-mean', element);

  /// mean_of_median
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GroupMeasure.mean_of_median([this.element])
      : dbValue = 'mean-of-median',
        super('mean-of-median', element);

  /// median_of_mean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GroupMeasure.median_of_mean([this.element])
      : dbValue = 'median-of-mean',
        super('median-of-mean', element);

  /// median_of_median
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GroupMeasure.median_of_median([this.element])
      : dbValue = 'median-of-median',
        super('median-of-median', element);

  /// For instances where an Element is present but not value

  GroupMeasure.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  GroupMeasure._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'mean',
    'median',
    'mean-of-mean',
    'mean-of-median',
    'median-of-mean',
    'median-of-median',
  ];

  /// Returns the enum value with an element attached
  GroupMeasure withElement(Element? newElement) {
    return GroupMeasure._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GroupMeasure.$value';
}
