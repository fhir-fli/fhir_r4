// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes for general categories of communications such as alerts, instructions, etc.
class CommunicationCategory {
  // Private constructor for internal use (like enum)
  CommunicationCategory._(this.fhirCode, {this.element});

  /// Factory constructor to create [CommunicationCategory] from JSON.
  factory CommunicationCategory.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommunicationCategory.elementOnly.withElement(element);
    }
    return CommunicationCategory._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CommunicationCategory values
  /// alert
  static final CommunicationCategory alert = CommunicationCategory._(
    'alert',
  );

  /// notification
  static final CommunicationCategory notification = CommunicationCategory._(
    'notification',
  );

  /// reminder
  static final CommunicationCategory reminder = CommunicationCategory._(
    'reminder',
  );

  /// instruction
  static final CommunicationCategory instruction = CommunicationCategory._(
    'instruction',
  );

  /// For instances where an Element is present but not value

  static final CommunicationCategory elementOnly = CommunicationCategory._('');

  /// List of all enum-like values
  static final List<CommunicationCategory> values = [
    alert,
    notification,
    reminder,
    instruction,
  ];

  /// Returns the enum value with an element attached
  CommunicationCategory withElement(Element? newElement) {
    return CommunicationCategory._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
