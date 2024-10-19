// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A code that indicates how the server supports conditional read.
@Entity()
class ConditionalReadStatus extends FhirCode {
  /// Factory constructor to create [ConditionalReadStatus] from JSON.
  factory ConditionalReadStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionalReadStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return ConditionalReadStatus._(value, element);
    }
    throw ArgumentError(
      'ConditionalReadStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// not_supported
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionalReadStatus.not_supported([this.element])
      : dbValue = 'not-supported',
        super('not-supported', element);

  /// modified_since
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionalReadStatus.modified_since([this.element])
      : dbValue = 'modified-since',
        super('modified-since', element);

  /// not_match
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionalReadStatus.not_match([this.element])
      : dbValue = 'not-match',
        super('not-match', element);

  /// full_support
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionalReadStatus.full_support([this.element])
      : dbValue = 'full-support',
        super('full-support', element);

  /// For instances where an Element is present but not value

  ConditionalReadStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ConditionalReadStatus._(super.input, [super.element])
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
    'not-supported',
    'modified-since',
    'not-match',
    'full-support',
  ];

  /// Returns the enum value with an element attached
  ConditionalReadStatus withElement(Element? newElement) {
    return ConditionalReadStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConditionalReadStatus.$value';
}
