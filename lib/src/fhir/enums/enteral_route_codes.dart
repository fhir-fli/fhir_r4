// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// EnteralRouteOfAdministration: Codes specifying the route of administration of enteral formula. This value set is composed of HL7 V3 codes and is provided as a suggestive example.
class EnteralRouteCodes {
  // Private constructor for internal use (like enum)
  EnteralRouteCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EnteralRouteCodes values
  /// PO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EnteralRouteCodes PO = EnteralRouteCodes._(
    'PO',
  );

  /// EFT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EnteralRouteCodes EFT = EnteralRouteCodes._(
    'EFT',
  );

  /// ENTINSTL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EnteralRouteCodes ENTINSTL = EnteralRouteCodes._(
    'ENTINSTL',
  );

  /// GT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EnteralRouteCodes GT = EnteralRouteCodes._(
    'GT',
  );

  /// NGT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EnteralRouteCodes NGT = EnteralRouteCodes._(
    'NGT',
  );

  /// OGT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EnteralRouteCodes OGT = EnteralRouteCodes._(
    'OGT',
  );

  /// GJT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EnteralRouteCodes GJT = EnteralRouteCodes._(
    'GJT',
  );

  /// JJTINSTL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EnteralRouteCodes JJTINSTL = EnteralRouteCodes._(
    'JJTINSTL',
  );

  /// OJJ
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EnteralRouteCodes OJJ = EnteralRouteCodes._(
    'OJJ',
  );

  /// For instances where an Element is present but not value

  static final EnteralRouteCodes elementOnly = EnteralRouteCodes._('');

  /// List of all enum-like values
  static final List<EnteralRouteCodes> values = [
    PO,
    EFT,
    ENTINSTL,
    GT,
    NGT,
    OGT,
    GJT,
    JJTINSTL,
    OJJ,
  ];

  /// Returns the enum value with an element attached
  EnteralRouteCodes withElement(Element? newElement) {
    return EnteralRouteCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EnteralRouteCodes] from JSON.
  static EnteralRouteCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EnteralRouteCodes.elementOnly.withElement(element);
    }
    return EnteralRouteCodes._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
