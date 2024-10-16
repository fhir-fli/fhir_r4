import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes the financial processing priority codes.
enum ProcessPriorityCodes {
  /// Display: Immediate
  /// Definition: Immediately in real time.
  stat('stat'),

  /// Display: Normal
  /// Definition: With best effort.
  normal('normal'),

  /// Display: Deferred
  /// Definition: Later, when possible.
  deferred_('deferred'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ProcessPriorityCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ProcessPriorityCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProcessPriorityCodes.elementOnly.withElement(element);
    }
    return ProcessPriorityCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ProcessPriorityCodes withElement(Element? newElement) {
    return ProcessPriorityCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
