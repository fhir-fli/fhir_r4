// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// EnteralRouteOfAdministration: Codes specifying the route of administration of enteral formula. This value set is composed of HL7 V3 codes and is provided as a suggestive example.
enum EnteralRouteCodes {
  /// Display:
  /// Definition:
  PO('PO'),

  /// Display:
  /// Definition:
  EFT('EFT'),

  /// Display:
  /// Definition:
  ENTINSTL('ENTINSTL'),

  /// Display:
  /// Definition:
  GT('GT'),

  /// Display:
  /// Definition:
  NGT('NGT'),

  /// Display:
  /// Definition:
  OGT('OGT'),

  /// Display:
  /// Definition:
  GJT('GJT'),

  /// Display:
  /// Definition:
  JJTINSTL('JJTINSTL'),

  /// Display:
  /// Definition:
  OJJ('OJJ'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const EnteralRouteCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [EnteralRouteCodes] instances.
  static EnteralRouteCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EnteralRouteCodes.elementOnly.withElement(element);
    }
    return EnteralRouteCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  EnteralRouteCodes withElement(Element? newElement) {
    return EnteralRouteCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
