// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Example Measure Stratification Value for MeasureReports Resource.
@Entity()
class MeasureReportStratifierValueExample extends FhirCode {
  /// Factory constructor to create [MeasureReportStratifierValueExample] from JSON.
  factory MeasureReportStratifierValueExample.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureReportStratifierValueExample.elementOnly(element);
    }
    if (values.contains(value)) {
      return MeasureReportStratifierValueExample._(value, element);
    }
    throw ArgumentError(
      'MeasureReportStratifierValueExample.fromJson: JSON value is not a valid value',
    );
  }

  /// northwest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureReportStratifierValueExample.northwest([this.element])
      : dbValue = 'northwest',
        super('northwest', element);

  /// northeast
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureReportStratifierValueExample.northeast([this.element])
      : dbValue = 'northeast',
        super('northeast', element);

  /// southwest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureReportStratifierValueExample.southwest([this.element])
      : dbValue = 'southwest',
        super('southwest', element);

  /// southeast
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureReportStratifierValueExample.southeast([this.element])
      : dbValue = 'southeast',
        super('southeast', element);

  /// For instances where an Element is present but not value

  MeasureReportStratifierValueExample.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MeasureReportStratifierValueExample._(super.input, [super.element])
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
    'northwest',
    'northeast',
    'southwest',
    'southeast',
  ];

  /// Returns the enum value with an element attached
  MeasureReportStratifierValueExample withElement(Element? newElement) {
    return MeasureReportStratifierValueExample._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MeasureReportStratifierValueExample.$value';
}
