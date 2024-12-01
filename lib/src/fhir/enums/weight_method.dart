// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The method by which the substance weight was measured.
class WeightMethod {
  // Private constructor for internal use (like enum)
  WeightMethod._(this.fhirCode, {this.element});

  /// Factory constructor to create [WeightMethod] from JSON.
  factory WeightMethod.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return WeightMethod.elementOnly.withElement(element);
    }
    return WeightMethod._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// WeightMethod values
  /// SDS_PAGE
  static final WeightMethod SDS_PAGE = WeightMethod._(
    'SDS-PAGE',
  );

  /// Calculated
  static final WeightMethod Calculated = WeightMethod._(
    'Calculated',
  );

  /// LighScattering
  static final WeightMethod LighScattering = WeightMethod._(
    'LighScattering',
  );

  /// Viscosity
  static final WeightMethod Viscosity = WeightMethod._(
    'Viscosity',
  );

  /// GelPermeationCentrifugation
  static final WeightMethod GelPermeationCentrifugation = WeightMethod._(
    'GelPermeationCentrifugation',
  );

  /// End_groupAnalysis
  static final WeightMethod End_groupAnalysis = WeightMethod._(
    'End-groupAnalysis',
  );

  /// End_groupTitration
  static final WeightMethod End_groupTitration = WeightMethod._(
    'End-groupTitration',
  );

  /// Size_ExclusionChromatography
  static final WeightMethod Size_ExclusionChromatography = WeightMethod._(
    'Size-ExclusionChromatography',
  );

  /// For instances where an Element is present but not value

  static final WeightMethod elementOnly = WeightMethod._('');

  /// List of all enum-like values
  static final List<WeightMethod> values = [
    SDS_PAGE,
    Calculated,
    LighScattering,
    Viscosity,
    GelPermeationCentrifugation,
    End_groupAnalysis,
    End_groupTitration,
    Size_ExclusionChromatography,
  ];

  /// Returns the enum value with an element attached
  WeightMethod withElement(Element? newElement) {
    return WeightMethod._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
