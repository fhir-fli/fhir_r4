// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Example set of codes that can be used for billing purposes.
@Entity()
class ChargeItemCode extends FhirCode {
  /// Factory constructor to create [ChargeItemCode] from JSON.
  factory ChargeItemCode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ChargeItemCode.elementOnly(element);
    }
    if (values.contains(value)) {
      return ChargeItemCode._(value, element);
    }
    throw ArgumentError(
      'ChargeItemCode.fromJson: JSON value is not a valid value',
    );
  }

  /// value1100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChargeItemCode.value1100([this.element])
      : dbValue = '1100',
        super('1100', element);

  /// value1210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChargeItemCode.value1210([this.element])
      : dbValue = '1210',
        super('1210', element);

  /// value1320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChargeItemCode.value1320([this.element])
      : dbValue = '1320',
        super('1320', element);

  /// For instances where an Element is present but not value

  ChargeItemCode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ChargeItemCode._(super.input, [super.element])
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
    '1100',
    '1210',
    '1320',
  ];

  /// Returns the enum value with an element attached
  ChargeItemCode withElement(Element? newElement) {
    return ChargeItemCode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ChargeItemCode.$value';
}
