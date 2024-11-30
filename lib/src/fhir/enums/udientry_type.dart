// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes to identify how UDI data was entered.
class UDIEntryType {
  // Private constructor for internal use (like enum)
  UDIEntryType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// UDIEntryType values
  /// barcode
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UDIEntryType barcode = UDIEntryType._(
    'barcode',
  );

  /// rfid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UDIEntryType rfid = UDIEntryType._(
    'rfid',
  );

  /// manual
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UDIEntryType manual = UDIEntryType._(
    'manual',
  );

  /// card
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UDIEntryType card = UDIEntryType._(
    'card',
  );

  /// self_reported
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UDIEntryType self_reported = UDIEntryType._(
    'self-reported',
  );

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UDIEntryType unknown = UDIEntryType._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final UDIEntryType elementOnly = UDIEntryType._('');

  /// List of all enum-like values
  static final List<UDIEntryType> values = [
    barcode,
    rfid,
    manual,
    card,
    self_reported,
    unknown,
  ];

  /// Returns the enum value with an element attached
  UDIEntryType withElement(Element? newElement) {
    return UDIEntryType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [UDIEntryType] from JSON.
  static UDIEntryType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UDIEntryType.elementOnly.withElement(element);
    }
    return UDIEntryType._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
