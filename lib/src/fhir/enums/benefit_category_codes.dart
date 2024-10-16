import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes examples of Benefit Category codes.
enum BenefitCategoryCodes {
  /// Display: Medical Care
  /// Definition: Medical Care.
  value1('1'),

  /// Display: Surgical
  /// Definition: Surgical.
  value2('2'),

  /// Display: Consultation
  /// Definition: Consultation.
  value3('3'),

  /// Display: Diagnostic XRay
  /// Definition: Diagnostic XRay.
  value4('4'),

  /// Display: Diagnostic Lab
  /// Definition: Diagnostic Lab.
  value5('5'),

  /// Display: Renal Supplies
  /// Definition: Renal Supplies excluding Dialysis.
  value14('14'),

  /// Display: Diagnostic Dental
  /// Definition: Diagnostic Dental.
  value23('23'),

  /// Display: Periodontics
  /// Definition: Periodontics.
  value24('24'),

  /// Display: Restorative
  /// Definition: Restorative.
  value25('25'),

  /// Display: Endodontics
  /// Definition: Endodontics.
  value26('26'),

  /// Display: Maxillofacial Prosthetics
  /// Definition: Maxillofacial Prosthetics.
  value27('27'),

  /// Display: Adjunctive Dental Services
  /// Definition: Adjunctive Dental Services.
  value28('28'),

  /// Display: Health Benefit Plan Coverage
  /// Definition: Health Benefit Plan Coverage.
  value30('30'),

  /// Display: Dental Care
  /// Definition: Dental Care.
  value35('35'),

  /// Display: Dental Crowns
  /// Definition: Dental Crowns.
  value36('36'),

  /// Display: Dental Accident
  /// Definition: Dental Accident.
  value37('37'),

  /// Display: Hospital Room and Board
  /// Definition: Hospital Room and Board.
  value49('49'),

  /// Display: Major Medical
  /// Definition: Major Medical.
  value55('55'),

  /// Display: Medically Related Transportation
  /// Definition: Medically Related Transportation.
  value56('56'),

  /// Display: In-vitro Fertilization
  /// Definition: In-vitro Fertilization.
  value61('61'),

  /// Display: MRI Scan
  /// Definition: MRI Scan.
  value62('62'),

  /// Display: Donor Procedures
  /// Definition: Donor Procedures such as organ harvest.
  value63('63'),

  /// Display: Maternity
  /// Definition: Maternity.
  value69('69'),

  /// Display: Renal Dialysis
  /// Definition: Renal dialysis.
  value76('76'),

  /// Display: Medical Coverage
  /// Definition: Medical Coverage.
  F1('F1'),

  /// Display: Dental Coverage
  /// Definition: Dental Coverage.
  F3('F3'),

  /// Display: Hearing Coverage
  /// Definition: Hearing Coverage.
  F4('F4'),

  /// Display: Vision Coverage
  /// Definition: Vision Coverage.
  F6('F6'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const BenefitCategoryCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static BenefitCategoryCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BenefitCategoryCodes.elementOnly.withElement(element);
    }
    return BenefitCategoryCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  BenefitCategoryCodes withElement(Element? newElement) {
    return BenefitCategoryCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
