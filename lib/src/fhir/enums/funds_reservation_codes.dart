import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample funds reservation type codes.
enum FundsReservationCodes {
  /// Display: Patient
  /// Definition: The payor is requested to reserve funds for the provision of the named services by any provider for settlement of future claims related to this request.
  patient('patient'),

  /// Display: Provider
  /// Definition: The payor is requested to reserve funds solely for the named provider for settlement of future claims related to this request.
  provider('provider'),

  /// Display: None
  /// Definition: The payor is not being requested to reserve any funds for the settlement of future claims.
  none('none'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const FundsReservationCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static FundsReservationCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FundsReservationCodes.elementOnly.withElement(element);
    }
    return FundsReservationCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  FundsReservationCodes withElement(Element? newElement) {
    return FundsReservationCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
