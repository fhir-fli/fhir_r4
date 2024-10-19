// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes sample Revenue Center codes.
@Entity()
class ExampleRevenueCenterCodes extends FhirCode {
  /// Factory constructor to create [ExampleRevenueCenterCodes] from JSON.
  factory ExampleRevenueCenterCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleRevenueCenterCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ExampleRevenueCenterCodes._(value, element);
    }
    throw ArgumentError(
      'ExampleRevenueCenterCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// value0370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleRevenueCenterCodes.value0370([this.element])
      : dbValue = '0370',
        super('0370', element);

  /// value0420
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleRevenueCenterCodes.value0420([this.element])
      : dbValue = '0420',
        super('0420', element);

  /// value0421
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleRevenueCenterCodes.value0421([this.element])
      : dbValue = '0421',
        super('0421', element);

  /// value0440
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleRevenueCenterCodes.value0440([this.element])
      : dbValue = '0440',
        super('0440', element);

  /// value0441
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleRevenueCenterCodes.value0441([this.element])
      : dbValue = '0441',
        super('0441', element);

  /// value0450
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleRevenueCenterCodes.value0450([this.element])
      : dbValue = '0450',
        super('0450', element);

  /// value0451
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleRevenueCenterCodes.value0451([this.element])
      : dbValue = '0451',
        super('0451', element);

  /// value0452
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleRevenueCenterCodes.value0452([this.element])
      : dbValue = '0452',
        super('0452', element);

  /// value0010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleRevenueCenterCodes.value0010([this.element])
      : dbValue = '0010',
        super('0010', element);

  /// For instances where an Element is present but not value

  ExampleRevenueCenterCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ExampleRevenueCenterCodes._(super.input, [super.element])
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
    '0370',
    '0420',
    '0421',
    '0440',
    '0441',
    '0450',
    '0451',
    '0452',
    '0010',
  ];

  /// Returns the enum value with an element attached
  ExampleRevenueCenterCodes withElement(Element? newElement) {
    return ExampleRevenueCenterCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleRevenueCenterCodes.$value';
}
