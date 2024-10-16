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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const IdentifierTypeCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static IdentifierTypeCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentifierTypeCodes.elementOnly.withElement(element);
    }
    return IdentifierTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  IdentifierTypeCodes withElement(Element? newElement) {
    return IdentifierTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
