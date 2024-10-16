import 'package:fhir_r4/fhir_r4.dart';

/// The kind of response to a message.
enum ResponseType {
  /// Display: OK
  /// Definition: The message was accepted and processed without error.
  ok('ok'),

  /// Display: Transient Error
  /// Definition: Some internal unexpected error occurred - wait and try again. Note - this is usually used for things like database unavailable, which may be expected to resolve, though human intervention may be required.
  transient_error('transient-error'),

  /// Display: Fatal Error
  /// Definition: The message was rejected because of a problem with the content. There is no point in re-sending without change. The response narrative SHALL describe the issue.
  fatal_error('fatal-error'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ResponseType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ResponseType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResponseType.elementOnly.withElement(element);
    }
    return ResponseType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ResponseType withElement(Element? newElement) {
    return ResponseType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
