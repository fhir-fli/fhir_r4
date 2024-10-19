// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of a statistic, e.g. relative risk or mean
@collection
class StatisticType {
  /// Constructor for internal use (like enum)
  StatisticType({this.fhirCode, this.element})
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

  /// StatisticType values
  /// absolute_MedianDiff
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType absolute_MedianDiff = StatisticType(
    fhirCode: 'absolute-MedianDiff',
  );

  /// C25463
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C25463 = StatisticType(
    fhirCode: 'C25463',
  );

  /// value0000301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType value0000301 = StatisticType(
    fhirCode: '0000301',
  );

  /// predictedRisk
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType predictedRisk = StatisticType(
    fhirCode: 'predictedRisk',
  );

  /// descriptive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType descriptive = StatisticType(
    fhirCode: 'descriptive',
  );

  /// C93150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C93150 = StatisticType(
    fhirCode: 'C93150',
  );

  /// C16726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C16726 = StatisticType(
    fhirCode: 'C16726',
  );

  /// rate_ratio
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType rate_ratio = StatisticType(
    fhirCode: 'rate-ratio',
  );

  /// C25564
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C25564 = StatisticType(
    fhirCode: 'C25564',
  );

  /// C53319
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C53319 = StatisticType(
    fhirCode: 'C53319',
  );

  /// value0000457
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType value0000457 = StatisticType(
    fhirCode: '0000457',
  );

  /// C28007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C28007 = StatisticType(
    fhirCode: 'C28007',
  );

  /// C25570
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C25570 = StatisticType(
    fhirCode: 'C25570',
  );

  /// C16932
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C16932 = StatisticType(
    fhirCode: 'C16932',
  );

  /// C65172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C65172 = StatisticType(
    fhirCode: 'C65172',
  );

  /// C17010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C17010 = StatisticType(
    fhirCode: 'C17010',
  );

  /// C44256
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C44256 = StatisticType(
    fhirCode: 'C44256',
  );

  /// value0000565
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType value0000565 = StatisticType(
    fhirCode: '0000565',
  );

  /// C93152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C93152 = StatisticType(
    fhirCode: 'C93152',
  );

  /// value0000424
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType value0000424 = StatisticType(
    fhirCode: '0000424',
  );

  /// C65171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType C65171 = StatisticType(
    fhirCode: 'C65171',
  );

  /// value0000100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StatisticType value0000100 = StatisticType(
    fhirCode: '0000100',
  );

  /// For instances where an Element is present but not value

  static final StatisticType elementOnly = StatisticType();

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
    return StatisticType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StatisticType.$fhirCode';
}
