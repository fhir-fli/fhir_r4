// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of a statistic, e.g. relative risk or mean
@Entity()
class StatisticType extends FhirCode {
  /// Factory constructor to create [StatisticType] from JSON.
  factory StatisticType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StatisticType.elementOnly(element);
    }
    if (values.contains(value)) {
      return StatisticType._(value, element);
    }
    throw ArgumentError(
      'StatisticType.fromJson: JSON value is not a valid value',
    );
  }

  /// absolute_MedianDiff
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticType.absolute_MedianDiff([this.element])
      : dbValue = 'absolute-MedianDiff',
        super('absolute-MedianDiff', element);

  /// C25463
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticType.C25463([this.element])
      : dbValue = 'C25463',
        super('C25463', element);

  /// value0000301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticType.value0000301([this.element])
      : dbValue = '0000301',
        super('0000301', element);

  /// predictedRisk
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticType.predictedRisk([this.element])
      : dbValue = 'predictedRisk',
        super('predictedRisk', element);

  /// descriptive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticType.descriptive([this.element])
      : dbValue = 'descriptive',
        super('descriptive', element);

  /// C93150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticType.C93150([this.element])
      : dbValue = 'C93150',
        super('C93150', element);

  /// C16726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticType.C16726([this.element])
      : dbValue = 'C16726',
        super('C16726', element);

  /// rate_ratio
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticType.rate_ratio([this.element])
      : dbValue = 'rate-ratio',
        super('rate-ratio', element);

  /// C25564
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticType.C25564([this.element])
      : dbValue = 'C25564',
        super('C25564', element);

  /// C53319
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticType.C53319([this.element])
      : dbValue = 'C53319',
        super('C53319', element);

  /// value0000457
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticType.value0000457([this.element])
      : dbValue = '0000457',
        super('0000457', element);

  /// C28007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticType.C28007([this.element])
      : dbValue = 'C28007',
        super('C28007', element);

  /// C25570
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticType.C25570([this.element])
      : dbValue = 'C25570',
        super('C25570', element);

  /// C16932
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticType.C16932([this.element])
      : dbValue = 'C16932',
        super('C16932', element);

  /// C65172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticType.C65172([this.element])
      : dbValue = 'C65172',
        super('C65172', element);

  /// C17010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticType.C17010([this.element])
      : dbValue = 'C17010',
        super('C17010', element);

  /// C44256
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticType.C44256([this.element])
      : dbValue = 'C44256',
        super('C44256', element);

  /// value0000565
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticType.value0000565([this.element])
      : dbValue = '0000565',
        super('0000565', element);

  /// C93152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticType.C93152([this.element])
      : dbValue = 'C93152',
        super('C93152', element);

  /// value0000424
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticType.value0000424([this.element])
      : dbValue = '0000424',
        super('0000424', element);

  /// C65171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticType.C65171([this.element])
      : dbValue = 'C65171',
        super('C65171', element);

  /// value0000100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StatisticType.value0000100([this.element])
      : dbValue = '0000100',
        super('0000100', element);

  /// For instances where an Element is present but not value

  StatisticType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  StatisticType._(super.input, [super.element])
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
    'absolute-MedianDiff',
    'C25463',
    '0000301',
    'predictedRisk',
    'descriptive',
    'C93150',
    'C16726',
    'rate-ratio',
    'C25564',
    'C53319',
    '0000457',
    'C28007',
    'C25570',
    'C16932',
    'C65172',
    'C17010',
    'C44256',
    '0000565',
    'C93152',
    '0000424',
    'C65171',
    '0000100',
  ];

  /// Returns the enum value with an element attached
  StatisticType withElement(Element? newElement) {
    return StatisticType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StatisticType.$value';
}
