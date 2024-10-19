// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Unified Code for Units of Measure (UCUM). This value set includes common UCUM codes for units of distance
@Entity()
class CommonUCUMCodesForDistance extends FhirCode {
  /// Factory constructor to create [CommonUCUMCodesForDistance] from JSON.
  factory CommonUCUMCodesForDistance.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonUCUMCodesForDistance.elementOnly(element);
    }
    if (values.contains(value)) {
      return CommonUCUMCodesForDistance._(value, element);
    }
    throw ArgumentError(
      'CommonUCUMCodesForDistance.fromJson: JSON value is not a valid value',
    );
  }

  /// nm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonUCUMCodesForDistance.nm([this.element])
      : dbValue = 'nm',
        super('nm', element);

  /// um
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonUCUMCodesForDistance.um([this.element])
      : dbValue = 'um',
        super('um', element);

  /// mm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonUCUMCodesForDistance.mm([this.element])
      : dbValue = 'mm',
        super('mm', element);

  /// m
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonUCUMCodesForDistance.m([this.element])
      : dbValue = 'm',
        super('m', element);

  /// km
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommonUCUMCodesForDistance.km([this.element])
      : dbValue = 'km',
        super('km', element);

  /// For instances where an Element is present but not value

  CommonUCUMCodesForDistance.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CommonUCUMCodesForDistance._(super.input, [super.element])
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
    'nm',
    'um',
    'mm',
    'm',
    'km',
  ];

  /// Returns the enum value with an element attached
  CommonUCUMCodesForDistance withElement(Element? newElement) {
    return CommonUCUMCodesForDistance._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CommonUCUMCodesForDistance.$value';
}
