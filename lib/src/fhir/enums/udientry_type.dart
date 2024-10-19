// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes to identify how UDI data was entered.
@Entity()
class UDIEntryType extends FhirCode {
  /// Factory constructor to create [UDIEntryType] from JSON.
  factory UDIEntryType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UDIEntryType.elementOnly(element);
    }
    if (values.contains(value)) {
      return UDIEntryType._(value, element);
    }
    throw ArgumentError(
      'UDIEntryType.fromJson: JSON value is not a valid value',
    );
  }

  /// barcode
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UDIEntryType.barcode([this.element])
      : dbValue = 'barcode',
        super('barcode', element);

  /// rfid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UDIEntryType.rfid([this.element])
      : dbValue = 'rfid',
        super('rfid', element);

  /// manual
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UDIEntryType.manual([this.element])
      : dbValue = 'manual',
        super('manual', element);

  /// card
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UDIEntryType.card([this.element])
      : dbValue = 'card',
        super('card', element);

  /// self_reported
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UDIEntryType.self_reported([this.element])
      : dbValue = 'self-reported',
        super('self-reported', element);

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UDIEntryType.unknown([this.element])
      : dbValue = 'unknown',
        super('unknown', element);

  /// For instances where an Element is present but not value

  UDIEntryType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  UDIEntryType._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'barcode',
    'rfid',
    'manual',
    'card',
    'self-reported',
    'unknown',
  ];

  /// Returns the enum value with an element attached
  UDIEntryType withElement(Element? newElement) {
    return UDIEntryType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'UDIEntryType.$value';
}
