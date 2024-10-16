import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to indicate the method by which a specimen was collected.
enum FHIRSpecimenCollectionMethod {
  /// Display: Aspiration - action
  /// Definition:
  value129316008('129316008'),

  /// Display: Biopsy - action
  /// Definition:
  value129314006('129314006'),

  /// Display: Puncture - action
  /// Definition:
  value129300006('129300006'),

  /// Display: Excision - action
  /// Definition:
  value129304002('129304002'),

  /// Display: Scraping - action
  /// Definition:
  value129323009('129323009'),

  /// Display: Urine specimen collection, clean catch
  /// Definition:
  value73416001('73416001'),

  /// Display: Timed urine collection
  /// Definition:
  value225113003('225113003'),

  /// Display: Urine specimen collection, catheterized
  /// Definition:
  value70777001('70777001'),

  /// Display: Collection of coughed sputum
  /// Definition:
  value386089008('386089008'),

  /// Display: Finger-prick sampling
  /// Definition:
  value278450005('278450005'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const FHIRSpecimenCollectionMethod(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static FHIRSpecimenCollectionMethod fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRSpecimenCollectionMethod.elementOnly.withElement(element);
    }
    return FHIRSpecimenCollectionMethod.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  FHIRSpecimenCollectionMethod withElement(Element? newElement) {
    return FHIRSpecimenCollectionMethod.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
