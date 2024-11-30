// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The impact of the content of a message.
class MessageSignificanceCategory {
  // Private constructor for internal use (like enum)
  MessageSignificanceCategory._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MessageSignificanceCategory values
  /// consequence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MessageSignificanceCategory consequence =
      MessageSignificanceCategory._(
    'consequence',
  );

  /// currency
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MessageSignificanceCategory currency =
      MessageSignificanceCategory._(
    'currency',
  );

  /// notification
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MessageSignificanceCategory notification =
      MessageSignificanceCategory._(
    'notification',
  );

  /// For instances where an Element is present but not value

  static final MessageSignificanceCategory elementOnly =
      MessageSignificanceCategory._('');

  /// List of all enum-like values
  static final List<MessageSignificanceCategory> values = [
    consequence,
    currency,
    notification,
  ];

  /// Returns the enum value with an element attached
  MessageSignificanceCategory withElement(Element? newElement) {
    return MessageSignificanceCategory._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MessageSignificanceCategory] from JSON.
  static MessageSignificanceCategory fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageSignificanceCategory.elementOnly.withElement(element);
    }
    return MessageSignificanceCategory._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
