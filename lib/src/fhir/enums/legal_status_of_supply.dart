// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The prescription supply types appropriate to a medicinal product
class LegalStatusOfSupply {
  // Private constructor for internal use (like enum)
  LegalStatusOfSupply._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// LegalStatusOfSupply values
  /// value100000072076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LegalStatusOfSupply value100000072076 = LegalStatusOfSupply._(
    '100000072076',
  );

  /// value100000072077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LegalStatusOfSupply value100000072077 = LegalStatusOfSupply._(
    '100000072077',
  );

  /// value100000072078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LegalStatusOfSupply value100000072078 = LegalStatusOfSupply._(
    '100000072078',
  );

  /// value100000072079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LegalStatusOfSupply value100000072079 = LegalStatusOfSupply._(
    '100000072079',
  );

  /// value100000072084
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LegalStatusOfSupply value100000072084 = LegalStatusOfSupply._(
    '100000072084',
  );

  /// value100000072085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LegalStatusOfSupply value100000072085 = LegalStatusOfSupply._(
    '100000072085',
  );

  /// value100000072086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LegalStatusOfSupply value100000072086 = LegalStatusOfSupply._(
    '100000072086',
  );

  /// value100000157313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LegalStatusOfSupply value100000157313 = LegalStatusOfSupply._(
    '100000157313',
  );

  /// For instances where an Element is present but not value

  static final LegalStatusOfSupply elementOnly = LegalStatusOfSupply._('');

  /// List of all enum-like values
  static final List<LegalStatusOfSupply> values = [
    value100000072076,
    value100000072077,
    value100000072078,
    value100000072079,
    value100000072084,
    value100000072085,
    value100000072086,
    value100000157313,
  ];

  /// Returns the enum value with an element attached
  LegalStatusOfSupply withElement(Element? newElement) {
    return LegalStatusOfSupply._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [LegalStatusOfSupply] from JSON.
  static LegalStatusOfSupply fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LegalStatusOfSupply.elementOnly.withElement(element);
    }
    return LegalStatusOfSupply._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
