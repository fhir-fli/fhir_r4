import 'package:fhir_r4/fhir_r4.dart';

/// Codes to identify how UDI data was entered.
enum UDIEntryType {
  /// Display: Barcode
  /// Definition: a barcodescanner captured the data from the device label.
  barcode('barcode'),

  /// Display: RFID
  /// Definition: An RFID chip reader captured the data from the device label.
  rfid('rfid'),

  /// Display: Manual
  /// Definition: The data was read from the label by a person and manually entered. (e.g. via a keyboard).
  manual('manual'),

  /// Display: Card
  /// Definition: The data originated from a patient's implant card and was read by an operator.
  card('card'),

  /// Display: Self Reported
  /// Definition: The data originated from a patient source and was not directly scanned or read from a label or card.
  self_reported('self-reported'),

  /// Display: Unknown
  /// Definition: The method of data capture has not been determined.
  unknown('unknown'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const UDIEntryType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static UDIEntryType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UDIEntryType.elementOnly.withElement(element);
    }
    return UDIEntryType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  UDIEntryType withElement(Element? newElement) {
    return UDIEntryType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
