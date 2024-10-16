import 'package:fhir_r4/fhir_r4.dart';

/// The kind of dose or rate specified.
enum DoseAndRateType {
  /// Display: Calculated
  /// Definition: The dose specified is calculated by the prescriber or the system.
  calculated('calculated'),

  /// Display: Ordered
  /// Definition: The dose specified is as ordered by the prescriber.
  ordered('ordered'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const DoseAndRateType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static DoseAndRateType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DoseAndRateType.elementOnly.withElement(element);
    }
    return DoseAndRateType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  DoseAndRateType withElement(Element? newElement) {
    return DoseAndRateType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
