import 'package:fhir_r4/fhir_r4.dart';

/// The method by which the substance weight was measured.
enum WeightMethod {
  /// Display: SDS-PAGE (sodium dodecyl sulfate-polyacrylamide gel electrophoresis)
  /// Definition:
  SDS_PAGE('SDS-PAGE'),

  /// Display: calculated
  /// Definition:
  Calculated('Calculated'),

  /// Display: light scattering
  /// Definition:
  LighScattering('LighScattering'),

  /// Display: viscosity
  /// Definition:
  Viscosity('Viscosity'),

  /// Display: gel permeation centrifugation
  /// Definition:
  GelPermeationCentrifugation('GelPermeationCentrifugation'),

  /// Display: End-group analysis
  /// Definition:
  End_groupAnalysis('End-groupAnalysis'),

  /// Display: End-group titration
  /// Definition:
  End_groupTitration('End-groupTitration'),

  /// Display: Size-exclusion chromatography
  /// Definition:
  Size_ExclusionChromatography('Size-ExclusionChromatography'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const WeightMethod(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static WeightMethod fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return WeightMethod.elementOnly.withElement(element);
    }
    return WeightMethod.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  WeightMethod withElement(Element? newElement) {
    return WeightMethod.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
