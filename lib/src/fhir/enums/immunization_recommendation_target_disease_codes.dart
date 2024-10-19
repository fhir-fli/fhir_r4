// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the disease targeted by a vaccination recommendation. This value set is provided as a suggestive example and includes the SNOMED CT concepts from the 64572001 (Disease) hierarchy.
@Entity()
class ImmunizationRecommendationTargetDiseaseCodes extends FhirCode {
  /// Factory constructor to create [ImmunizationRecommendationTargetDiseaseCodes] from JSON.
  factory ImmunizationRecommendationTargetDiseaseCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRecommendationTargetDiseaseCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ImmunizationRecommendationTargetDiseaseCodes._(value, element);
    }
    throw ArgumentError(
      'ImmunizationRecommendationTargetDiseaseCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// value1857005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRecommendationTargetDiseaseCodes.value1857005([this.element])
      : dbValue = '1857005',
        super('1857005', element);

  /// value397430003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRecommendationTargetDiseaseCodes.value397430003([this.element])
      : dbValue = '397430003',
        super('397430003', element);

  /// value14189004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRecommendationTargetDiseaseCodes.value14189004([this.element])
      : dbValue = '14189004',
        super('14189004', element);

  /// value36989005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRecommendationTargetDiseaseCodes.value36989005([this.element])
      : dbValue = '36989005',
        super('36989005', element);

  /// value36653000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRecommendationTargetDiseaseCodes.value36653000([this.element])
      : dbValue = '36653000',
        super('36653000', element);

  /// value76902006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRecommendationTargetDiseaseCodes.value76902006([this.element])
      : dbValue = '76902006',
        super('76902006', element);

  /// value709410003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRecommendationTargetDiseaseCodes.value709410003([this.element])
      : dbValue = '709410003',
        super('709410003', element);

  /// value27836007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRecommendationTargetDiseaseCodes.value27836007([this.element])
      : dbValue = '27836007',
        super('27836007', element);

  /// value398102009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRecommendationTargetDiseaseCodes.value398102009([this.element])
      : dbValue = '398102009',
        super('398102009', element);

  /// For instances where an Element is present but not value

  ImmunizationRecommendationTargetDiseaseCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ImmunizationRecommendationTargetDiseaseCodes._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    '1857005',
    '397430003',
    '14189004',
    '36989005',
    '36653000',
    '76902006',
    '709410003',
    '27836007',
    '398102009',
  ];

  /// Returns the enum value with an element attached
  ImmunizationRecommendationTargetDiseaseCodes withElement(
      Element? newElement) {
    return ImmunizationRecommendationTargetDiseaseCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationRecommendationTargetDiseaseCodes.$value';
}
