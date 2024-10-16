import 'package:fhir_r4/fhir_r4.dart';

/// Status of the supply delivery.
enum SupplyDeliveryStatus {
  /// Display: In Progress
  /// Definition: Supply has been requested, but not delivered.
  in_progress('in-progress'),

  /// Display: Delivered
  /// Definition: Supply has been delivered ("completed").
  completed('completed'),

  /// Display: Abandoned
  /// Definition: Delivery was not completed.
  abandoned('abandoned'),

  /// Display: Entered In Error
  /// Definition: This electronic record should never have existed, though it is possible that real-world decisions were based on it. (If real-world activity has occurred, the status should be "abandoned" rather than "entered-in-error".).
  entered_in_error('entered-in-error'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SupplyDeliveryStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SupplyDeliveryStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyDeliveryStatus.elementOnly.withElement(element);
    }
    return SupplyDeliveryStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SupplyDeliveryStatus withElement(Element? newElement) {
    return SupplyDeliveryStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
