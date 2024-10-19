// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A statistic about a statistic, e.g. Confidence interval or p-value
@Entity()
class AttributeEstimateType extends FhirCode {
  /// Factory constructor to create [AttributeEstimateType] from JSON.
  factory AttributeEstimateType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AttributeEstimateType.elementOnly(element);
    }
    if (values.contains(value)) {
      return AttributeEstimateType._(value, element);
    }
    throw ArgumentError(
      'AttributeEstimateType.fromJson: JSON value is not a valid value',
    );
  }

  /// value0000419
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AttributeEstimateType.value0000419([this.element])
      : dbValue = '0000419',
        super('0000419', element);

  /// C53324
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AttributeEstimateType.C53324([this.element])
      : dbValue = 'C53324',
        super('C53324', element);

  /// value0000455
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AttributeEstimateType.value0000455([this.element])
      : dbValue = '0000455',
        super('0000455', element);

  /// value0000420
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AttributeEstimateType.value0000420([this.element])
      : dbValue = '0000420',
        super('0000420', element);

  /// C53245
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AttributeEstimateType.C53245([this.element])
      : dbValue = 'C53245',
        super('C53245', element);

  /// C44185
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AttributeEstimateType.C44185([this.element])
      : dbValue = 'C44185',
        super('C44185', element);

  /// C38013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AttributeEstimateType.C38013([this.element])
      : dbValue = 'C38013',
        super('C38013', element);

  /// C53322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AttributeEstimateType.C53322([this.element])
      : dbValue = 'C53322',
        super('C53322', element);

  /// value0000037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AttributeEstimateType.value0000037([this.element])
      : dbValue = '0000037',
        super('0000037', element);

  /// value0000421
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AttributeEstimateType.value0000421([this.element])
      : dbValue = '0000421',
        super('0000421', element);

  /// C48918
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AttributeEstimateType.C48918([this.element])
      : dbValue = 'C48918',
        super('C48918', element);

  /// For instances where an Element is present but not value

  AttributeEstimateType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AttributeEstimateType._(super.input, [super.element])
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
    '0000419',
    'C53324',
    '0000455',
    '0000420',
    'C53245',
    'C44185',
    'C38013',
    'C53322',
    '0000037',
    '0000421',
    'C48918',
  ];

  /// Returns the enum value with an element attached
  AttributeEstimateType withElement(Element? newElement) {
    return AttributeEstimateType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AttributeEstimateType.$value';
}
