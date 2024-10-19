// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The method by which the substance weight was measured.
@collection
class WeightMethod {
  /// Constructor for internal use (like enum)
  WeightMethod({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// WeightMethod values
  /// SDS_PAGE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final WeightMethod SDS_PAGE = WeightMethod(
    fhirCode: 'SDS-PAGE',
  );

  /// Calculated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final WeightMethod Calculated = WeightMethod(
    fhirCode: 'Calculated',
  );

  /// LighScattering
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final WeightMethod LighScattering = WeightMethod(
    fhirCode: 'LighScattering',
  );

  /// Viscosity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final WeightMethod Viscosity = WeightMethod(
    fhirCode: 'Viscosity',
  );

  /// GelPermeationCentrifugation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final WeightMethod GelPermeationCentrifugation = WeightMethod(
    fhirCode: 'GelPermeationCentrifugation',
  );

  /// End_groupAnalysis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final WeightMethod End_groupAnalysis = WeightMethod(
    fhirCode: 'End-groupAnalysis',
  );

  /// End_groupTitration
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final WeightMethod End_groupTitration = WeightMethod(
    fhirCode: 'End-groupTitration',
  );

  /// Size_ExclusionChromatography
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final WeightMethod Size_ExclusionChromatography = WeightMethod(
    fhirCode: 'Size-ExclusionChromatography',
  );

  /// For instances where an Element is present but not value

  static final WeightMethod elementOnly = WeightMethod();

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
    return WeightMethod(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [WeightMethod] from JSON.
  static WeightMethod fromJson(Map<String, dynamic> json) {
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'WeightMethod.$fhirCode';
}
