// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample funds reservation type codes.
class FundsReservationCodes {
  // Private constructor for internal use (like enum)
  FundsReservationCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [FundsReservationCodes] from JSON.
  factory FundsReservationCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FundsReservationCodes.elementOnly.withElement(element);
    }
    return FundsReservationCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// FundsReservationCodes values
  /// patient
  static final FundsReservationCodes patient = FundsReservationCodes._(
    'patient',
  );

  /// provider
  static final FundsReservationCodes provider = FundsReservationCodes._(
    'provider',
  );

  /// none
  static final FundsReservationCodes none = FundsReservationCodes._(
    'none',
  );

  /// For instances where an Element is present but not value

  static final FundsReservationCodes elementOnly = FundsReservationCodes._('');

  /// List of all enum-like values
  static final List<FundsReservationCodes> values = [
    patient,
    provider,
    none,
  ];

  /// Returns the enum value with an element attached
  FundsReservationCodes withElement(Element? newElement) {
    return FundsReservationCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
