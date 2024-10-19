// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A code that indicates how the server supports conditional delete.
@Entity()
class ConditionalDeleteStatus extends FhirCode {
  /// Factory constructor to create [ConditionalDeleteStatus] from JSON.
  factory ConditionalDeleteStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionalDeleteStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return ConditionalDeleteStatus._(value, element);
    }
    throw ArgumentError(
      'ConditionalDeleteStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// not_supported
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionalDeleteStatus.not_supported([this.element])
      : dbValue = 'not-supported',
        super('not-supported', element);

  /// single
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionalDeleteStatus.single([this.element])
      : dbValue = 'single',
        super('single', element);

  /// multiple
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionalDeleteStatus.multiple([this.element])
      : dbValue = 'multiple',
        super('multiple', element);

  /// For instances where an Element is present but not value

  ConditionalDeleteStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ConditionalDeleteStatus._(super.input, [super.element])
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
    'single',
    'multiple',
  ];

  /// Returns the enum value with an element attached
  ConditionalDeleteStatus withElement(Element? newElement) {
    return ConditionalDeleteStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConditionalDeleteStatus.$value';
}
