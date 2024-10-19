// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Permitted data type for observation value.
@Entity()
class ObservationDataType extends FhirCode {
  /// Factory constructor to create [ObservationDataType] from JSON.
  factory ObservationDataType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationDataType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ObservationDataType._(value, element);
    }
    throw ArgumentError(
      'ObservationDataType.fromJson: JSON value is not a valid value',
    );
  }

  /// Quantity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationDataType.Quantity([this.element])
      : dbValue = 'Quantity',
        super('Quantity', element);

  /// CodeableConcept
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationDataType.CodeableConcept([this.element])
      : dbValue = 'CodeableConcept',
        super('CodeableConcept', element);

  /// string
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationDataType.string([this.element])
      : dbValue = 'string',
        super('string', element);

  /// boolean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationDataType.boolean([this.element])
      : dbValue = 'boolean',
        super('boolean', element);

  /// integer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationDataType.integer([this.element])
      : dbValue = 'integer',
        super('integer', element);

  /// Range
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationDataType.Range([this.element])
      : dbValue = 'Range',
        super('Range', element);

  /// Ratio
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationDataType.Ratio([this.element])
      : dbValue = 'Ratio',
        super('Ratio', element);

  /// SampledData
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationDataType.SampledData([this.element])
      : dbValue = 'SampledData',
        super('SampledData', element);

  /// time
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationDataType.time([this.element])
      : dbValue = 'time',
        super('time', element);

  /// dateTime
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationDataType.dateTime([this.element])
      : dbValue = 'dateTime',
        super('dateTime', element);

  /// Period
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationDataType.Period([this.element])
      : dbValue = 'Period',
        super('Period', element);

  /// For instances where an Element is present but not value

  ObservationDataType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ObservationDataType._(super.input, [super.element])
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
    'Quantity',
    'CodeableConcept',
    'string',
    'boolean',
    'integer',
    'Range',
    'Ratio',
    'SampledData',
    'time',
    'dateTime',
    'Period',
  ];

  /// Returns the enum value with an element attached
  ObservationDataType withElement(Element? newElement) {
    return ObservationDataType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ObservationDataType.$value';
}
