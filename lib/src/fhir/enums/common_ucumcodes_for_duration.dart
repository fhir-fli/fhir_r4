// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Unified Code for Units of Measure (UCUM). This value set includes all UCUM codes
@Entity()
class CommonUCUMCodesForDuration extends FhirCode {
  /// Factory constructor to create [CommonUCUMCodesForDuration] from JSON.
  factory CommonUCUMCodesForDuration.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonUCUMCodesForDuration.elementOnly(element);
    }
    if (values.contains(value)) {
      return CommonUCUMCodesForDuration._(value, element);
    }
    throw ArgumentError(
      'CommonUCUMCodesForDuration.fromJson: JSON value is not a valid value',
    );
  }

  /// ms
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonUCUMCodesForDuration.ms([this.element])
      : dbValue = 'ms',
        super('ms', element);

  /// s
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonUCUMCodesForDuration.s([this.element])
      : dbValue = 's',
        super('s', element);

  /// min
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonUCUMCodesForDuration.min([this.element])
      : dbValue = 'min',
        super('min', element);

  /// h
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonUCUMCodesForDuration.h([this.element])
      : dbValue = 'h',
        super('h', element);

  /// d
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonUCUMCodesForDuration.d([this.element])
      : dbValue = 'd',
        super('d', element);

  /// wk
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonUCUMCodesForDuration.wk([this.element])
      : dbValue = 'wk',
        super('wk', element);

  /// mo
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonUCUMCodesForDuration.mo([this.element])
      : dbValue = 'mo',
        super('mo', element);

  /// a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonUCUMCodesForDuration.a([this.element])
      : dbValue = 'a',
        super('a', element);

  /// For instances where an Element is present but not value

  CommonUCUMCodesForDuration.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CommonUCUMCodesForDuration._(super.input, [super.element])
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
    'ms',
    's',
    'min',
    'h',
    'd',
    'wk',
    'mo',
    'a',
  ];

  /// Returns the enum value with an element attached
  CommonUCUMCodesForDuration withElement(Element? newElement) {
    return CommonUCUMCodesForDuration._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CommonUCUMCodesForDuration.$value';
}
