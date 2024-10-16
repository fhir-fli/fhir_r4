import 'package:fhir_r4/fhir_r4.dart';

/// Extra monitoring defined for a Medicinal Product.
enum AdditionalMonitoring {
  /// Display: Requirement for Black Triangle Monitoring
  /// Definition: Requirement for Black Triangle Monitoring
  BlackTriangleMonitoring('BlackTriangleMonitoring'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AdditionalMonitoring(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AdditionalMonitoring fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdditionalMonitoring.elementOnly.withElement(element);
    }
    return AdditionalMonitoring.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AdditionalMonitoring withElement(Element? newElement) {
    return AdditionalMonitoring.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
