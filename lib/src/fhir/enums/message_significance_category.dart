// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The impact of the content of a message.
enum MessageSignificanceCategory {
  /// Display: Consequence
  /// Definition: The message represents/requests a change that should not be processed more than once; e.g., making a booking for an appointment.
  consequence('consequence'),

  /// Display: Currency
  /// Definition: The message represents a response to query for current information. Retrospective processing is wrong and/or wasteful.
  currency('currency'),

  /// Display: Notification
  /// Definition: The content is not necessarily intended to be current, and it can be reprocessed, though there may be version issues created by processing old notifications.
  notification('notification'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MessageSignificanceCategory(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MessageSignificanceCategory] instances.
  static MessageSignificanceCategory fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageSignificanceCategory.elementOnly.withElement(
        element,
      );
    }
    return MessageSignificanceCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MessageSignificanceCategory withElement(Element? newElement) {
    return MessageSignificanceCategory.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
