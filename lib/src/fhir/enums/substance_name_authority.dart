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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SubstanceNameAuthority(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SubstanceNameAuthority fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceNameAuthority.elementOnly.withElement(element);
    }
    return SubstanceNameAuthority.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SubstanceNameAuthority withElement(Element? newElement) {
    return SubstanceNameAuthority.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
