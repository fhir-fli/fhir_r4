// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of a statistic, e.g. relative risk or mean
class StatisticType {
  // Private constructor for internal use (like enum)
  StatisticType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// StatisticType values
  /// absolute_MedianDiff
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType absolute_MedianDiff = StatisticType._(
    'absolute-MedianDiff',
  );

  /// C25463
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C25463 = StatisticType._(
    'C25463',
  );

  /// value0000301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType value0000301 = StatisticType._(
    '0000301',
  );

  /// predictedRisk
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType predictedRisk = StatisticType._(
    'predictedRisk',
  );

  /// descriptive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType descriptive = StatisticType._(
    'descriptive',
  );

  /// C93150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C93150 = StatisticType._(
    'C93150',
  );

  /// C16726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C16726 = StatisticType._(
    'C16726',
  );

  /// rate_ratio
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType rate_ratio = StatisticType._(
    'rate-ratio',
  );

  /// C25564
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C25564 = StatisticType._(
    'C25564',
  );

  /// C53319
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C53319 = StatisticType._(
    'C53319',
  );

  /// value0000457
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType value0000457 = StatisticType._(
    '0000457',
  );

  /// C28007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C28007 = StatisticType._(
    'C28007',
  );

  /// C25570
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C25570 = StatisticType._(
    'C25570',
  );

  /// C16932
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C16932 = StatisticType._(
    'C16932',
  );

  /// C65172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C65172 = StatisticType._(
    'C65172',
  );

  /// C17010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C17010 = StatisticType._(
    'C17010',
  );

  /// C44256
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C44256 = StatisticType._(
    'C44256',
  );

  /// value0000565
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType value0000565 = StatisticType._(
    '0000565',
  );

  /// C93152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C93152 = StatisticType._(
    'C93152',
  );

  /// value0000424
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType value0000424 = StatisticType._(
    '0000424',
  );

  /// C65171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C65171 = StatisticType._(
    'C65171',
  );

  /// value0000100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType value0000100 = StatisticType._(
    '0000100',
  );

  /// For instances where an Element is present but not value

  static final StatisticType elementOnly = StatisticType._('');

  /// List of all enum-like values
  static final List<StatisticType> values = [
    absolute_MedianDiff,
    C25463,
    value0000301,
    predictedRisk,
    descriptive,
    C93150,
    C16726,
    rate_ratio,
    C25564,
    C53319,
    value0000457,
    C28007,
    C25570,
    C16932,
    C65172,
    C17010,
    C44256,
    value0000565,
    C93152,
    value0000424,
    C65171,
    value0000100,
  ];

  /// Returns the enum value with an element attached
  StatisticType withElement(Element? newElement) {
    return StatisticType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [StatisticType] from JSON.
  static StatisticType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StatisticType.elementOnly.withElement(element);
    }
    return StatisticType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
