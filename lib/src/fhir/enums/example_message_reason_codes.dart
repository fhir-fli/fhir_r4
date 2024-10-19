// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Example Message Reasons. These are the set of codes that might be used an updating an encounter using admin-update.
@Entity()
class ExampleMessageReasonCodes extends FhirCode {
  /// Factory constructor to create [ExampleMessageReasonCodes] from JSON.
  factory ExampleMessageReasonCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleMessageReasonCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ExampleMessageReasonCodes._(value, element);
    }
    throw ArgumentError(
      'ExampleMessageReasonCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// admit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleMessageReasonCodes.admit([this.element])
      : dbValue = 'admit',
        super('admit', element);

  /// discharge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleMessageReasonCodes.discharge([this.element])
      : dbValue = 'discharge',
        super('discharge', element);

  /// absent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleMessageReasonCodes.absent([this.element])
      : dbValue = 'absent',
        super('absent', element);

  /// return_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleMessageReasonCodes.return_([this.element])
      : dbValue = 'return',
        super('return', element);

  /// moved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleMessageReasonCodes.moved([this.element])
      : dbValue = 'moved',
        super('moved', element);

  /// edit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleMessageReasonCodes.edit([this.element])
      : dbValue = 'edit',
        super('edit', element);

  /// For instances where an Element is present but not value

  ExampleMessageReasonCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ExampleMessageReasonCodes._(super.input, [super.element])
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
    'admit',
    'discharge',
    'absent',
    'return',
    'moved',
    'edit',
  ];

  /// Returns the enum value with an element attached
  ExampleMessageReasonCodes withElement(Element? newElement) {
    return ExampleMessageReasonCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleMessageReasonCodes.$value';
}
