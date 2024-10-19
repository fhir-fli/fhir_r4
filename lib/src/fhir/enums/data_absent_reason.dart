// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Used to specify why the normally expected content of the data element is missing.
@Entity()
class DataAbsentReason extends FhirCode {
  /// Factory constructor to create [DataAbsentReason] from JSON.
  factory DataAbsentReason.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DataAbsentReason.elementOnly(element);
    }
    if (values.contains(value)) {
      return DataAbsentReason._(value, element);
    }
    throw ArgumentError(
      'DataAbsentReason.fromJson: JSON value is not a valid value',
    );
  }

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DataAbsentReason.unknown([this.element])
      : dbValue = 'unknown',
        super('unknown', element);

  /// asked_unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DataAbsentReason.asked_unknown([this.element])
      : dbValue = 'asked-unknown',
        super('asked-unknown', element);

  /// temp_unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DataAbsentReason.temp_unknown([this.element])
      : dbValue = 'temp-unknown',
        super('temp-unknown', element);

  /// not_asked
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DataAbsentReason.not_asked([this.element])
      : dbValue = 'not-asked',
        super('not-asked', element);

  /// asked_declined
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DataAbsentReason.asked_declined([this.element])
      : dbValue = 'asked-declined',
        super('asked-declined', element);

  /// masked
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DataAbsentReason.masked([this.element])
      : dbValue = 'masked',
        super('masked', element);

  /// not_applicable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DataAbsentReason.not_applicable([this.element])
      : dbValue = 'not-applicable',
        super('not-applicable', element);

  /// unsupported
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DataAbsentReason.unsupported([this.element])
      : dbValue = 'unsupported',
        super('unsupported', element);

  /// as_text
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DataAbsentReason.as_text([this.element])
      : dbValue = 'as-text',
        super('as-text', element);

  /// error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DataAbsentReason.error([this.element])
      : dbValue = 'error',
        super('error', element);

  /// not_a_number
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DataAbsentReason.not_a_number([this.element])
      : dbValue = 'not-a-number',
        super('not-a-number', element);

  /// negative_infinity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DataAbsentReason.negative_infinity([this.element])
      : dbValue = 'negative-infinity',
        super('negative-infinity', element);

  /// positive_infinity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DataAbsentReason.positive_infinity([this.element])
      : dbValue = 'positive-infinity',
        super('positive-infinity', element);

  /// not_performed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DataAbsentReason.not_performed([this.element])
      : dbValue = 'not-performed',
        super('not-performed', element);

  /// not_permitted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DataAbsentReason.not_permitted([this.element])
      : dbValue = 'not-permitted',
        super('not-permitted', element);

  /// For instances where an Element is present but not value

  DataAbsentReason.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  DataAbsentReason._(super.input, [super.element])
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
    'unknown',
    'asked-unknown',
    'temp-unknown',
    'not-asked',
    'asked-declined',
    'masked',
    'not-applicable',
    'unsupported',
    'as-text',
    'error',
    'not-a-number',
    'negative-infinity',
    'positive-infinity',
    'not-performed',
    'not-permitted',
  ];

  /// Returns the enum value with an element attached
  DataAbsentReason withElement(Element? newElement) {
    return DataAbsentReason._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DataAbsentReason.$value';
}
