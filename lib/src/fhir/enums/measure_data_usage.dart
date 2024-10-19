// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The intended usage for supplemental data elements in the measure.
@Entity()
class MeasureDataUsage extends FhirCode {
  /// Factory constructor to create [MeasureDataUsage] from JSON.
  factory MeasureDataUsage.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureDataUsage.elementOnly(element);
    }
    if (values.contains(value)) {
      return MeasureDataUsage._(value, element);
    }
    throw ArgumentError(
      'MeasureDataUsage.fromJson: JSON value is not a valid value',
    );
  }

  /// supplemental_data
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureDataUsage.supplemental_data([this.element])
      : dbValue = 'supplemental-data',
        super('supplemental-data', element);

  /// risk_adjustment_factor
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureDataUsage.risk_adjustment_factor([this.element])
      : dbValue = 'risk-adjustment-factor',
        super('risk-adjustment-factor', element);

  /// For instances where an Element is present but not value

  MeasureDataUsage.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MeasureDataUsage._(super.input, [super.element])
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
    'supplemental-data',
    'risk-adjustment-factor',
  ];

  /// Returns the enum value with an element attached
  MeasureDataUsage withElement(Element? newElement) {
    return MeasureDataUsage._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MeasureDataUsage.$value';
}
