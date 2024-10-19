// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of the measure report.
@Entity()
class MeasureReportType extends FhirCode {
  /// Factory constructor to create [MeasureReportType] from JSON.
  factory MeasureReportType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureReportType.elementOnly(element);
    }
    if (values.contains(value)) {
      return MeasureReportType._(value, element);
    }
    throw ArgumentError(
      'MeasureReportType.fromJson: JSON value is not a valid value',
    );
  }

  /// individual
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureReportType.individual([this.element])
      : dbValue = 'individual',
        super('individual', element);

  /// subject_list
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureReportType.subject_list([this.element])
      : dbValue = 'subject-list',
        super('subject-list', element);

  /// summary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureReportType.summary([this.element])
      : dbValue = 'summary',
        super('summary', element);

  /// data_collection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureReportType.data_collection([this.element])
      : dbValue = 'data-collection',
        super('data-collection', element);

  /// For instances where an Element is present but not value

  MeasureReportType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MeasureReportType._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'individual',
    'subject-list',
    'summary',
    'data-collection',
  ];

  /// Returns the enum value with an element attached
  MeasureReportType withElement(Element? newElement) {
    return MeasureReportType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MeasureReportType.$value';
}
