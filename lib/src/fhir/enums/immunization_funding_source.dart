import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the source of the vaccine administered. This value set is provided as a suggestive example.
enum ImmunizationFundingSource {
  /// Display: Private
  /// Definition: The vaccine was purchased with private funds.
  private('private'),

  /// Display: Public
  /// Definition: The vaccine was purchased with public funds.
  public('public'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ImmunizationFundingSource(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ImmunizationFundingSource fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationFundingSource.elementOnly.withElement(element);
    }
    return ImmunizationFundingSource.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ImmunizationFundingSource withElement(Element? newElement) {
    return ImmunizationFundingSource.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
