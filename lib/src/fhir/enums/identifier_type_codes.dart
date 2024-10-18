// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A coded type for an identifier that can be used to determine which identifier to use for a specific purpose.
enum IdentifierTypeCodes {
  /// Display:
  /// Definition:
  DL('DL'),

  /// Display:
  /// Definition:
  PPN('PPN'),

  /// Display:
  /// Definition:
  BRN('BRN'),

  /// Display:
  /// Definition:
  MR('MR'),

  /// Display:
  /// Definition:
  MCN('MCN'),

  /// Display:
  /// Definition:
  EN('EN'),

  /// Display:
  /// Definition:
  TAX('TAX'),

  /// Display:
  /// Definition:
  NIIP('NIIP'),

  /// Display:
  /// Definition:
  PRN('PRN'),

  /// Display:
  /// Definition:
  MD('MD'),

  /// Display:
  /// Definition:
  DR('DR'),

  /// Display:
  /// Definition:
  ACSN('ACSN'),

  /// Display:
  /// Definition:
  UDI('UDI'),

  /// Display:
  /// Definition:
  SNO('SNO'),

  /// Display:
  /// Definition:
  SB('SB'),

  /// Display:
  /// Definition:
  PLAC('PLAC'),

  /// Display:
  /// Definition:
  FILL('FILL'),

  /// Display:
  /// Definition:
  JHN('JHN'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const IdentifierTypeCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [IdentifierTypeCodes] instances.
  static IdentifierTypeCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentifierTypeCodes.elementOnly.withElement(
        element,
      );
    }
    return IdentifierTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  IdentifierTypeCodes withElement(Element? newElement) {
    return IdentifierTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
