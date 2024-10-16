import 'package:fhir_r4/fhir_r4.dart';

/// HL7-defined table of codes which identify conditions under which acknowledgments are required to be returned in response to a message.
enum MessageheaderResponseRequest {
  /// Display: Always
  /// Definition: initiator expects a response for this message.
  always('always'),

  /// Display: Error/reject conditions only
  /// Definition: initiator expects a response only if in error.
  on_error('on-error'),

  /// Display: Never
  /// Definition: initiator does not expect a response.
  never('never'),

  /// Display: Successful completion only
  /// Definition: initiator expects a response only if successful.
  on_success('on-success'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MessageheaderResponseRequest(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MessageheaderResponseRequest fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageheaderResponseRequest.elementOnly.withElement(element);
    }
    return MessageheaderResponseRequest.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MessageheaderResponseRequest withElement(Element? newElement) {
    return MessageheaderResponseRequest.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
