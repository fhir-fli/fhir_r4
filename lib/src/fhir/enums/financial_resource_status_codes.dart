import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes Status codes.
enum FinancialResourceStatusCodes {
  /// Display: Active
  /// Definition: The instance is currently in-force.
  active('active'),

  /// Display: Cancelled
  /// Definition: The instance is withdrawn, rescinded or reversed.
  cancelled('cancelled'),

  /// Display: Draft
  /// Definition: A new instance the contents of which is not complete.
  draft('draft'),

  /// Display: Entered in Error
  /// Definition: The instance was entered in error.
  entered_in_error('entered-in-error'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const FinancialResourceStatusCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static FinancialResourceStatusCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FinancialResourceStatusCodes.elementOnly.withElement(element);
    }
    return FinancialResourceStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  FinancialResourceStatusCodes withElement(Element? newElement) {
    return FinancialResourceStatusCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
