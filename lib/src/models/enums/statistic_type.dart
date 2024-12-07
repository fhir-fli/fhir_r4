// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of a statistic, e.g. relative risk or mean
class StatisticType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  StatisticType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [StatisticType] from JSON.
  factory StatisticType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StatisticType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StatisticType cannot be constructed from JSON.',
      );
    }
    return StatisticType._(value: value, element: element);
  }

  /// absolute_MedianDiff
  static final StatisticType absolute_MedianDiff = StatisticType._(
    value: 'absolute-MedianDiff',
  );

  /// C25463
  static final StatisticType C25463 = StatisticType._(
    value: 'C25463',
  );

  /// value0000301
  static final StatisticType value0000301 = StatisticType._(
    value: '0000301',
  );

  /// predictedRisk
  static final StatisticType predictedRisk = StatisticType._(
    value: 'predictedRisk',
  );

  /// descriptive
  static final StatisticType descriptive = StatisticType._(
    value: 'descriptive',
  );

  /// C93150
  static final StatisticType C93150 = StatisticType._(
    value: 'C93150',
  );

  /// C16726
  static final StatisticType C16726 = StatisticType._(
    value: 'C16726',
  );

  /// rate_ratio
  static final StatisticType rate_ratio = StatisticType._(
    value: 'rate-ratio',
  );

  /// C25564
  static final StatisticType C25564 = StatisticType._(
    value: 'C25564',
  );

  /// C53319
  static final StatisticType C53319 = StatisticType._(
    value: 'C53319',
  );

  /// value0000457
  static final StatisticType value0000457 = StatisticType._(
    value: '0000457',
  );

  /// C28007
  static final StatisticType C28007 = StatisticType._(
    value: 'C28007',
  );

  /// C25570
  static final StatisticType C25570 = StatisticType._(
    value: 'C25570',
  );

  /// C16932
  static final StatisticType C16932 = StatisticType._(
    value: 'C16932',
  );

  /// C65172
  static final StatisticType C65172 = StatisticType._(
    value: 'C65172',
  );

  /// C17010
  static final StatisticType C17010 = StatisticType._(
    value: 'C17010',
  );

  /// C44256
  static final StatisticType C44256 = StatisticType._(
    value: 'C44256',
  );

  /// value0000565
  static final StatisticType value0000565 = StatisticType._(
    value: '0000565',
  );

  /// C93152
  static final StatisticType C93152 = StatisticType._(
    value: 'C93152',
  );

  /// value0000424
  static final StatisticType value0000424 = StatisticType._(
    value: '0000424',
  );

  /// C65171
  static final StatisticType C65171 = StatisticType._(
    value: 'C65171',
  );

  /// value0000100
  static final StatisticType value0000100 = StatisticType._(
    value: '0000100',
  );

  /// For instances where an Element is present but not value

  static final StatisticType elementOnly = StatisticType._(value: '');

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

  /// Clones the current instance
  @override
  StatisticType clone() => StatisticType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  StatisticType withElement(Element? newElement) {
    return StatisticType._(value: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  StatisticType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return StatisticType._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
