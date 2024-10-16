import 'package:fhir_r4/fhir_r4.dart';

/// An example value set of Codified order entry details concepts. These concepts only make sense in the context of what is being ordered. This example is for a patient ventilation order
enum ServiceRequestOrderDetailsCodes {
  /// Display: Continuous positive airway pressure ventilation treatment (regime/therapy)
  /// Definition:
  value47545007('47545007'),

  /// Display: Pressure controlled ventilation (procedure)
  /// Definition:
  value286812008('286812008'),

  /// Display: Patient triggered inspiratory assistance (procedure)
  /// Definition:
  value243144002('243144002'),

  /// Display: Assisted controlled mandatory ventilation (procedure)
  /// Definition:
  value243150007('243150007'),

  /// Display: Synchronized intermittent mandatory ventilation (procedure)
  /// Definition:
  value59427005('59427005'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ServiceRequestOrderDetailsCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ServiceRequestOrderDetailsCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceRequestOrderDetailsCodes.elementOnly.withElement(element);
    }
    return ServiceRequestOrderDetailsCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ServiceRequestOrderDetailsCodes withElement(Element? newElement) {
    return ServiceRequestOrderDetailsCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
