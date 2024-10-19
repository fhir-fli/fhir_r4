// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Unified Code for Units of Measure (UCUM). This value set includes all UCUM codes
@Entity()
class CommonUCUMCodesForAge extends FhirCode {
  /// Factory constructor to create [CommonUCUMCodesForAge] from JSON.
  factory CommonUCUMCodesForAge.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonUCUMCodesForAge.elementOnly(element);
    }
    if (values.contains(value)) {
      return CommonUCUMCodesForAge._(value, element);
    }
    throw ArgumentError(
      'CommonUCUMCodesForAge.fromJson: JSON value is not a valid value',
    );
  }

  /// min
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonUCUMCodesForAge.min([this.element])
      : dbValue = 'min',
        super('min', element);

  /// h
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonUCUMCodesForAge.h([this.element])
      : dbValue = 'h',
        super('h', element);

  /// d
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonUCUMCodesForAge.d([this.element])
      : dbValue = 'd',
        super('d', element);

  /// wk
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonUCUMCodesForAge.wk([this.element])
      : dbValue = 'wk',
        super('wk', element);

  /// mo
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonUCUMCodesForAge.mo([this.element])
      : dbValue = 'mo',
        super('mo', element);

  /// a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonUCUMCodesForAge.a([this.element])
      : dbValue = 'a',
        super('a', element);

  /// For instances where an Element is present but not value

  CommonUCUMCodesForAge.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CommonUCUMCodesForAge._(super.input, [super.element])
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
    'min',
    'h',
    'd',
    'wk',
    'mo',
    'a',
  ];

  /// Returns the enum value with an element attached
  CommonUCUMCodesForAge withElement(Element? newElement) {
    return CommonUCUMCodesForAge._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CommonUCUMCodesForAge.$value';
}
