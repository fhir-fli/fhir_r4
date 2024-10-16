import 'package:fhir_r4/fhir_r4.dart';

/// Dose forms for a product as a whole, considering all individual parts, but before any mixing
enum CombinedDoseForm {
  /// Display: Powder and solvent for oral solution
  /// Definition:
  value100000073366('100000073366'),

  /// Display: Powder and solvent for oral suspension
  /// Definition:
  value100000073651('100000073651'),

  /// Display: Eye drops, powder and solvent for solution
  /// Definition:
  value100000073774('100000073774'),

  /// Display: Eye drops, powder and solvent for suspension
  /// Definition:
  value100000073781('100000073781'),

  /// Display: Ear drops, powder and solvent for suspension
  /// Definition:
  value100000073801('100000073801'),

  /// Display: Powder and solvent for solution for infusion
  /// Definition:
  value100000073860('100000073860'),

  /// Display: Powder and solvent for solution for injection
  /// Definition:
  value100000073868('100000073868'),

  /// Display: Powder and solvent for suspension for injection
  /// Definition:
  value100000073869('100000073869'),

  /// Display: Powder and solvent for implantation paste
  /// Definition:
  value100000073884('100000073884'),

  /// Display: Endotracheopulmonary instillation, powder and solvent for solution
  /// Definition:
  value100000073891('100000073891'),

  /// Display: Powder and solvent for endocervical gel
  /// Definition:
  value100000073892('100000073892'),

  /// Display: Powder and solvent for sealant
  /// Definition:
  value100000073941('100000073941'),

  /// Display: Concentrate and solvent for concentrate for solution for infusion
  /// Definition:
  value100000073972('100000073972'),

  /// Display: Concentrate and solvent for cutaneous use
  /// Definition:
  value100000073973('100000073973'),

  /// Display: Concentrate and solvent for injection
  /// Definition:
  value100000073974('100000073974'),

  /// Display: Concentrate and solvent for solution for infusion
  /// Definition:
  value100000073975('100000073975'),

  /// Display: Concentrate and diluent for solution for infusion
  /// Definition:
  value100000073987('100000073987'),

  /// Display: Concentrate and solvent for cutaneous solution
  /// Definition:
  value100000073988('100000073988'),

  /// Display: Concentrate and solvent for solution for injection
  /// Definition:
  value100000073989('100000073989'),

  /// Display: Concentrate and solvent for suspension for injection
  /// Definition:
  value100000073990('100000073990'),

  /// Display: Granules and solvent for suspension for injection
  /// Definition:
  value100000073999('100000073999'),

  /// Display: Powder and solvent for concentrate for solution for infusion
  /// Definition:
  value100000074015('100000074015'),

  /// Display: Powder and solvent for cutaneous solution
  /// Definition:
  value100000074016('100000074016'),

  /// Display: Powder and solvent for gingival gel
  /// Definition:
  value100000074017('100000074017'),

  /// Display: Powder and solvent for prolonged-release suspension for injection
  /// Definition:
  value100000074018('100000074018'),

  /// Display: Powder and solvent for endosinusial solution
  /// Definition:
  value100000074030('100000074030'),

  /// Display: Powder and solvent for intraocular instillation solution
  /// Definition:
  value100000074031('100000074031'),

  /// Display: Powder and suspension for suspension for injection
  /// Definition:
  value100000074032('100000074032'),

  /// Display: Suspension and effervescent granules for oral suspension
  /// Definition:
  value100000074048('100000074048'),

  /// Display: Tablet and solvent for rectal suspension
  /// Definition:
  value100000074051('100000074051'),

  /// Display: Powder and solvent for dental gel
  /// Definition:
  value100000074053('100000074053'),

  /// Display: Gas and solvent for dispersion for injection/infusion
  /// Definition:
  value100000074056('100000074056'),

  /// Display: Powder and solvent for solution for injection/infusion
  /// Definition:
  value100000074057('100000074057'),

  /// Display: Suspension and solution for spray
  /// Definition:
  value100000074061('100000074061'),

  /// Display: Tablet and powder for oral solution
  /// Definition:
  value100000074064('100000074064'),

  /// Display: Emulsion and suspension for emulsion for injection
  /// Definition:
  value100000075580('100000075580'),

  /// Display: Powder and solvent for dispersion for injection
  /// Definition:
  value100000075584('100000075584'),

  /// Display: Powder for mouth wash
  /// Definition:
  value100000075587('100000075587'),

  /// Display: Lyophilisate and solvent for solution for injection
  /// Definition:
  value100000116137('100000116137'),

  /// Display: Fibrin sealant-powder and solvent for fibrin sealant
  /// Definition:
  value100000116141('100000116141'),

  /// Display: Granules and solvent for oral suspension
  /// Definition:
  value100000116155('100000116155'),

  /// Display: Lyophilisate and solvent for suspension for injection
  /// Definition:
  value100000116160('100000116160'),

  /// Display: Powder and gel for gel
  /// Definition:
  value100000116172('100000116172'),

  /// Display: Powder and solution for solution for injection
  /// Definition:
  value100000116173('100000116173'),

  /// Display: Powder and solvent for epilesional solution
  /// Definition:
  value100000116174('100000116174'),

  /// Display: Powder and solvent for intravesical solution
  /// Definition:
  value100000116175('100000116175'),

  /// Display: Powder and solvent for intravesical suspension
  /// Definition:
  value100000116176('100000116176'),

  /// Display: Powder and solvent for nebuliser solution
  /// Definition:
  value100000116177('100000116177'),

  /// Display: Powder, dispersion and solvent for concentrate for dispersion for infusion
  /// Definition:
  value100000116179('100000116179'),

  /// Display: Powder and solvent for emulsion for injection
  /// Definition:
  value100000125746('100000125746'),

  /// Display: Nasal drops, powder and solvent for solution
  /// Definition:
  value100000125747('100000125747'),

  /// Display: Suspension and solvent for suspension for injection
  /// Definition:
  value100000125777('100000125777'),

  /// Display: Concentrate and solvent for solution for injection/infusion
  /// Definition:
  value100000136318('100000136318'),

  /// Display: Powder and solvent for solution for injection/skin-prick test
  /// Definition:
  value100000136325('100000136325'),

  /// Display: Lyophilisate and solvent for suspension for nasal administration
  /// Definition:
  value100000136558('100000136558'),

  /// Display: Powder and solvent for solution for sealant
  /// Definition:
  value100000136560('100000136560'),

  /// Display: Solution for dispersion for injection/infusion
  /// Definition:
  value100000136907('100000136907'),

  /// Display: Powder and solution for dental cement
  /// Definition:
  value100000143502('100000143502'),

  /// Display: Endotracheopulmonary instillation, powder and solvent for suspension
  /// Definition:
  value100000143546('100000143546'),

  /// Display: Powder, solvent and matrix for implantation matrix
  /// Definition:
  value100000143552('100000143552'),

  /// Display: Nasal drops, lyophilisate and solvent for suspension
  /// Definition:
  value100000156068('100000156068'),

  /// Display: Lyophilisate and suspension for suspension for injection
  /// Definition:
  value100000157796('100000157796'),

  /// Display: Powder for concentrate and solution for solution for infusion
  /// Definition:
  value100000164467('100000164467'),

  /// Display: Powder and solution for bee-hive solution
  /// Definition:
  value100000169997('100000169997'),

  /// Display: Suspension and solvent for oral spray
  /// Definition:
  value100000170588('100000170588'),

  /// Display: Lyophilisate and solvent for oral suspension
  /// Definition:
  value100000171127('100000171127'),

  /// Display: Concentrate and solvent for concentrate for oral spray, suspension
  /// Definition:
  value100000171193('100000171193'),

  /// Display: Lyophilisate and solvent for oculonasal suspension
  /// Definition:
  value100000171238('100000171238'),

  /// Display: Emulsion and lyophilisate for suspension for injection
  /// Definition:
  value100000171935('100000171935'),

  /// Display: Powder and solvent for syrup
  /// Definition:
  value100000174065('100000174065'),

  /// Display: Nasal spray, lyophilisate and solvent for suspension
  /// Definition:
  value200000002161('200000002161'),

  /// Display: Powder and solution for bee-hive dispersion
  /// Definition:
  value200000002287('200000002287'),

  /// Display: Solution and dispersion for nebuliser dispersion
  /// Definition:
  value200000004201('200000004201'),

  /// Display: Effervescent powder and powder for oral suspension
  /// Definition:
  value200000004819('200000004819'),

  /// Display: Lyophilisate and solvent for emulsion for injection
  /// Definition:
  value200000004820('200000004820'),

  /// Display: Powder and solution for suspension for injection
  /// Definition:
  value200000005547('200000005547'),

  /// Display: Lyophilisate and solvent for suspension for nasal spray or injection
  /// Definition:
  value200000010382('200000010382'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CombinedDoseForm(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CombinedDoseForm fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CombinedDoseForm.elementOnly.withElement(element);
    }
    return CombinedDoseForm.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CombinedDoseForm withElement(Element? newElement) {
    return CombinedDoseForm.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
