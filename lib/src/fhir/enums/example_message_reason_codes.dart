// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example Message Reasons. These are the set of codes that might be used an updating an encounter using admin-update.
class ExampleMessageReasonCodes {
  // Private constructor for internal use (like enum)
  ExampleMessageReasonCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ExampleMessageReasonCodes values
  /// admit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleMessageReasonCodes admit = ExampleMessageReasonCodes._(
    'admit',
  );

  /// discharge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleMessageReasonCodes discharge =
      ExampleMessageReasonCodes._(
    'discharge',
  );

  /// absent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleMessageReasonCodes absent = ExampleMessageReasonCodes._(
    'absent',
  );

  /// return_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleMessageReasonCodes return_ = ExampleMessageReasonCodes._(
    'return',
  );

  /// moved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleMessageReasonCodes moved = ExampleMessageReasonCodes._(
    'moved',
  );

  /// edit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleMessageReasonCodes edit = ExampleMessageReasonCodes._(
    'edit',
  );

  /// For instances where an Element is present but not value

  static final ExampleMessageReasonCodes elementOnly =
      ExampleMessageReasonCodes._('');

  /// List of all enum-like values
  static final List<ExampleMessageReasonCodes> values = [
    admit,
    discharge,
    absent,
    return_,
    moved,
    edit,
  ];

  /// Returns the enum value with an element attached
  ExampleMessageReasonCodes withElement(Element? newElement) {
    return ExampleMessageReasonCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ExampleMessageReasonCodes] from JSON.
  static ExampleMessageReasonCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleMessageReasonCodes.elementOnly.withElement(element);
    }
    return ExampleMessageReasonCodes._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
