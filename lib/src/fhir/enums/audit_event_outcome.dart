import 'package:fhir_r4/fhir_r4.dart';

/// Indicates whether the event succeeded or failed.
enum AuditEventOutcome {
  /// Display: Success
  /// Definition: The operation completed successfully (whether with warnings or not).
  value0('0'),

  /// Display: Minor failure
  /// Definition: The action was not successful due to some kind of minor failure (often equivalent to an HTTP 400 response).
  value4('4'),

  /// Display: Serious failure
  /// Definition: The action was not successful due to some kind of unexpected error (often equivalent to an HTTP 500 response).
  value8('8'),

  /// Display: Major failure
  /// Definition: An error of such magnitude occurred that the system is no longer available for use (i.e. the system died).
  value12('12'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AuditEventOutcome(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AuditEventOutcome fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventOutcome.elementOnly.withElement(element);
    }
    return AuditEventOutcome.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AuditEventOutcome withElement(Element? newElement) {
    return AuditEventOutcome.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
