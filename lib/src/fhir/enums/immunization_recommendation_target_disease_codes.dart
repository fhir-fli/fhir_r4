// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the disease targeted by a vaccination recommendation. This value set is provided as a suggestive example and includes the SNOMED CT concepts from the 64572001 (Disease) hierarchy.
@collection
class ImmunizationRecommendationTargetDiseaseCodes {
  /// Constructor for internal use (like enum)
  ImmunizationRecommendationTargetDiseaseCodes({this.fhirCode, this.element})
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

  /// ImmunizationRecommendationTargetDiseaseCodes values
  /// value1857005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRecommendationTargetDiseaseCodes value1857005 =
      ImmunizationRecommendationTargetDiseaseCodes(
    fhirCode: '1857005',
  );

  /// value397430003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRecommendationTargetDiseaseCodes value397430003 =
      ImmunizationRecommendationTargetDiseaseCodes(
    fhirCode: '397430003',
  );

  /// value14189004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRecommendationTargetDiseaseCodes value14189004 =
      ImmunizationRecommendationTargetDiseaseCodes(
    fhirCode: '14189004',
  );

  /// value36989005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRecommendationTargetDiseaseCodes value36989005 =
      ImmunizationRecommendationTargetDiseaseCodes(
    fhirCode: '36989005',
  );

  /// value36653000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRecommendationTargetDiseaseCodes value36653000 =
      ImmunizationRecommendationTargetDiseaseCodes(
    fhirCode: '36653000',
  );

  /// value76902006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRecommendationTargetDiseaseCodes value76902006 =
      ImmunizationRecommendationTargetDiseaseCodes(
    fhirCode: '76902006',
  );

  /// value709410003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRecommendationTargetDiseaseCodes value709410003 =
      ImmunizationRecommendationTargetDiseaseCodes(
    fhirCode: '709410003',
  );

  /// value27836007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRecommendationTargetDiseaseCodes value27836007 =
      ImmunizationRecommendationTargetDiseaseCodes(
    fhirCode: '27836007',
  );

  /// value398102009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationRecommendationTargetDiseaseCodes value398102009 =
      ImmunizationRecommendationTargetDiseaseCodes(
    fhirCode: '398102009',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationRecommendationTargetDiseaseCodes elementOnly =
      ImmunizationRecommendationTargetDiseaseCodes();

  /// List of all enum-like values
  static final List<ImmunizationRecommendationTargetDiseaseCodes> values = [
    value1857005,
    value397430003,
    value14189004,
    value36989005,
    value36653000,
    value76902006,
    value709410003,
    value27836007,
    value398102009,
  ];

  /// Returns the enum value with an element attached
  ImmunizationRecommendationTargetDiseaseCodes withElement(
      Element? newElement) {
    return ImmunizationRecommendationTargetDiseaseCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ImmunizationRecommendationTargetDiseaseCodes] from JSON.
  static ImmunizationRecommendationTargetDiseaseCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRecommendationTargetDiseaseCodes.elementOnly
          .withElement(element);
    }
    return ImmunizationRecommendationTargetDiseaseCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationRecommendationTargetDiseaseCodes.$fhirCode';
}
