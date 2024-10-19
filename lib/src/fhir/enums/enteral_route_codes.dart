// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// EnteralRouteOfAdministration: Codes specifying the route of administration of enteral formula. This value set is composed of HL7 V3 codes and is provided as a suggestive example.
@Entity()
class EnteralRouteCodes extends FhirCode {
  /// Factory constructor to create [EnteralRouteCodes] from JSON.
  factory EnteralRouteCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EnteralRouteCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return EnteralRouteCodes._(value, element);
    }
    throw ArgumentError(
      'EnteralRouteCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// PO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EnteralRouteCodes.PO([this.element])
      : dbValue = 'PO',
        super('PO', element);

  /// EFT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EnteralRouteCodes.EFT([this.element])
      : dbValue = 'EFT',
        super('EFT', element);

  /// ENTINSTL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EnteralRouteCodes.ENTINSTL([this.element])
      : dbValue = 'ENTINSTL',
        super('ENTINSTL', element);

  /// GT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EnteralRouteCodes.GT([this.element])
      : dbValue = 'GT',
        super('GT', element);

  /// NGT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EnteralRouteCodes.NGT([this.element])
      : dbValue = 'NGT',
        super('NGT', element);

  /// OGT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EnteralRouteCodes.OGT([this.element])
      : dbValue = 'OGT',
        super('OGT', element);

  /// GJT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EnteralRouteCodes.GJT([this.element])
      : dbValue = 'GJT',
        super('GJT', element);

  /// JJTINSTL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EnteralRouteCodes.JJTINSTL([this.element])
      : dbValue = 'JJTINSTL',
        super('JJTINSTL', element);

  /// OJJ
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EnteralRouteCodes.OJJ([this.element])
      : dbValue = 'OJJ',
        super('OJJ', element);

  /// For instances where an Element is present but not value

  EnteralRouteCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  EnteralRouteCodes._(super.input, [super.element])
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
    'PO',
    'EFT',
    'ENTINSTL',
    'GT',
    'NGT',
    'OGT',
    'GJT',
    'JJTINSTL',
    'OJJ',
  ];

  /// Returns the enum value with an element attached
  EnteralRouteCodes withElement(Element? newElement) {
    return EnteralRouteCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EnteralRouteCodes.$value';
}
