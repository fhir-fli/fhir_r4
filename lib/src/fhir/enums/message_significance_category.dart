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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MessageSignificanceCategory(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MessageSignificanceCategory fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageSignificanceCategory.elementOnly.withElement(element);
    }
    return MessageSignificanceCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MessageSignificanceCategory withElement(Element? newElement) {
    return MessageSignificanceCategory.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
