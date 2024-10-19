// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A statistic about a statistic, e.g. Confidence interval or p-value
@collection
class AttributeEstimateType {
  /// Constructor for internal use (like enum)
  AttributeEstimateType({this.fhirCode, this.element})
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

  /// AttributeEstimateType values
  /// value0000419
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AttributeEstimateType value0000419 = AttributeEstimateType(
    fhirCode: '0000419',
  );

  /// C53324
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AttributeEstimateType C53324 = AttributeEstimateType(
    fhirCode: 'C53324',
  );

  /// value0000455
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AttributeEstimateType value0000455 = AttributeEstimateType(
    fhirCode: '0000455',
  );

  /// value0000420
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AttributeEstimateType value0000420 = AttributeEstimateType(
    fhirCode: '0000420',
  );

  /// C53245
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AttributeEstimateType C53245 = AttributeEstimateType(
    fhirCode: 'C53245',
  );

  /// C44185
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AttributeEstimateType C44185 = AttributeEstimateType(
    fhirCode: 'C44185',
  );

  /// C38013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AttributeEstimateType C38013 = AttributeEstimateType(
    fhirCode: 'C38013',
  );

  /// C53322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AttributeEstimateType C53322 = AttributeEstimateType(
    fhirCode: 'C53322',
  );

  /// value0000037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AttributeEstimateType value0000037 = AttributeEstimateType(
    fhirCode: '0000037',
  );

  /// value0000421
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AttributeEstimateType value0000421 = AttributeEstimateType(
    fhirCode: '0000421',
  );

  /// C48918
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AttributeEstimateType C48918 = AttributeEstimateType(
    fhirCode: 'C48918',
  );

  /// For instances where an Element is present but not value

  static final AttributeEstimateType elementOnly = AttributeEstimateType();

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
    return AttributeEstimateType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
