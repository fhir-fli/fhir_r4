import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of Benefit Term codes.
enum BenefitTermCodes {
  /// Display: Annual
  /// Definition: Annual, renewing on the anniversary
  annual('annual'),

  /// Display: Day
  /// Definition: Per day
  day('day'),

  /// Display: Lifetime
  /// Definition: For the total term, lifetime, of the policy or coverage
  lifetime('lifetime'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const BenefitTermCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static BenefitTermCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BenefitTermCodes.elementOnly.withElement(element);
    }
    return BenefitTermCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  BenefitTermCodes withElement(Element? newElement) {
    return BenefitTermCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
