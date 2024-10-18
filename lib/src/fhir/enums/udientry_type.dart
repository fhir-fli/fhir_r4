// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const UDIEntryType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [UDIEntryType] instances.
  static UDIEntryType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UDIEntryType.elementOnly.withElement(element);
    }
    return UDIEntryType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  UDIEntryType withElement(Element? newElement) {
    return UDIEntryType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
