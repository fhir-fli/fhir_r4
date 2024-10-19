// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A statistic about a statistic, e.g. Confidence interval or p-value
class AttributeEstimateType {
  // Private constructor for internal use (like enum)
  AttributeEstimateType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AttributeEstimateType values
  /// value0000419
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AttributeEstimateType value0000419 = AttributeEstimateType._(
    '0000419',
  );

  /// C53324
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AttributeEstimateType C53324 = AttributeEstimateType._(
    'C53324',
  );

  /// value0000455
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AttributeEstimateType value0000455 = AttributeEstimateType._(
    '0000455',
  );

  /// value0000420
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AttributeEstimateType value0000420 = AttributeEstimateType._(
    '0000420',
  );

  /// C53245
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AttributeEstimateType C53245 = AttributeEstimateType._(
    'C53245',
  );

  /// C44185
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AttributeEstimateType C44185 = AttributeEstimateType._(
    'C44185',
  );

  /// C38013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AttributeEstimateType C38013 = AttributeEstimateType._(
    'C38013',
  );

  /// C53322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AttributeEstimateType C53322 = AttributeEstimateType._(
    'C53322',
  );

  /// value0000037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AttributeEstimateType value0000037 = AttributeEstimateType._(
    '0000037',
  );

  /// value0000421
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AttributeEstimateType value0000421 = AttributeEstimateType._(
    '0000421',
  );

  /// C48918
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AttributeEstimateType C48918 = AttributeEstimateType._(
    'C48918',
  );

  /// For instances where an Element is present but not value

  static final AttributeEstimateType elementOnly = AttributeEstimateType._('');

  /// List of all enum-like values
  static final List<AttributeEstimateType> values = [
    value0000419,
    C53324,
    value0000455,
    value0000420,
    C53245,
    C44185,
    C38013,
    C53322,
    value0000037,
    value0000421,
    C48918,
  ];

  /// Returns the enum value with an element attached
  AttributeEstimateType withElement(Element? newElement) {
    return AttributeEstimateType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AttributeEstimateType] from JSON.
  static AttributeEstimateType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AttributeEstimateType.elementOnly.withElement(element);
    }
    return AttributeEstimateType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AttributeEstimateType.$fhirCode';
}
