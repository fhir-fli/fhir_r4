// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const FundsReservationCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [FundsReservationCodes] instances.
  static FundsReservationCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FundsReservationCodes.elementOnly.withElement(
        element,
      );
    }
    return FundsReservationCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  FundsReservationCodes withElement(Element? newElement) {
    return FundsReservationCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
