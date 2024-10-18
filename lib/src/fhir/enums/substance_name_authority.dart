// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// An authority that officates substance names.
enum SubstanceNameAuthority {
  /// Display: BAN
  /// Definition:
  BAN('BAN'),

  /// Display: COSING
  /// Definition:
  COSING('COSING'),

  /// Display: Ph.Eur.
  /// Definition:
  Ph_Eur_('Ph.Eur.'),

  /// Display: FCC
  /// Definition:
  FCC('FCC'),

  /// Display: INCI
  /// Definition:
  INCI('INCI'),

  /// Display: INN
  /// Definition:
  INN('INN'),

  /// Display: JAN
  /// Definition:
  JAN('JAN'),

  /// Display: JECFA
  /// Definition:
  JECFA('JECFA'),

  /// Display: MARTINDALE
  /// Definition:
  MARTINDALE('MARTINDALE'),

  /// Display: USAN
  /// Definition:
  USAN('USAN'),

  /// Display: USP
  /// Definition:
  USP('USP'),

  /// Display: PHF
  /// Definition:
  PHF('PHF'),

  /// Display: HAB
  /// Definition:
  HAB('HAB'),

  /// Display: PhF (Pharmacopée française)
  /// Definition:
  PhF('PhF'),

  /// Display: IUIS
  /// Definition:
  IUIS('IUIS'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const SubstanceNameAuthority(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [SubstanceNameAuthority] instances.
  static SubstanceNameAuthority fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceNameAuthority.elementOnly.withElement(element);
    }
    return SubstanceNameAuthority.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  SubstanceNameAuthority withElement(Element? newElement) {
    return SubstanceNameAuthority.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
