// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const WeightMethod(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [WeightMethod] instances.
  static WeightMethod fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return WeightMethod.elementOnly.withElement(element);
    }
    return WeightMethod.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  WeightMethod withElement(Element? newElement) {
    return WeightMethod.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
