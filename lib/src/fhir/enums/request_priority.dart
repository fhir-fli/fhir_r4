import 'package:fhir_r4/fhir_r4.dart';

/// Identifies the level of importance to be assigned to actioning the request.
enum RequestPriority {
  /// Display: Routine
  /// Definition: The request has normal priority.
  routine('routine'),

  /// Display: Urgent
  /// Definition: The request should be actioned promptly - higher priority than routine.
  urgent('urgent'),

  /// Display: ASAP
  /// Definition: The request should be actioned as soon as possible - higher priority than urgent.
  asap('asap'),

  /// Display: STAT
  /// Definition: The request should be actioned immediately - highest possible priority. E.g. an emergency.
  stat('stat'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const RequestPriority(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static RequestPriority fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestPriority.elementOnly.withElement(element);
    }
    return RequestPriority.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  RequestPriority withElement(Element? newElement) {
    return RequestPriority.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
