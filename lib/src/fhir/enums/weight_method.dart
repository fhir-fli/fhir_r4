// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The method by which the substance weight was measured.
@Entity()
class WeightMethod extends FhirCode {
  /// Factory constructor to create [WeightMethod] from JSON.
  factory WeightMethod.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return WeightMethod.elementOnly(element);
    }
    if (values.contains(value)) {
      return WeightMethod._(value, element);
    }
    throw ArgumentError(
      'WeightMethod.fromJson: JSON value is not a valid value',
    );
  }

  /// SDS_PAGE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  WeightMethod.SDS_PAGE([this.element])
      : dbValue = 'SDS-PAGE',
        super('SDS-PAGE', element);

  /// Calculated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  WeightMethod.Calculated([this.element])
      : dbValue = 'Calculated',
        super('Calculated', element);

  /// LighScattering
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  WeightMethod.LighScattering([this.element])
      : dbValue = 'LighScattering',
        super('LighScattering', element);

  /// Viscosity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  WeightMethod.Viscosity([this.element])
      : dbValue = 'Viscosity',
        super('Viscosity', element);

  /// GelPermeationCentrifugation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  WeightMethod.GelPermeationCentrifugation([this.element])
      : dbValue = 'GelPermeationCentrifugation',
        super('GelPermeationCentrifugation', element);

  /// End_groupAnalysis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  WeightMethod.End_groupAnalysis([this.element])
      : dbValue = 'End-groupAnalysis',
        super('End-groupAnalysis', element);

  /// End_groupTitration
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  WeightMethod.End_groupTitration([this.element])
      : dbValue = 'End-groupTitration',
        super('End-groupTitration', element);

  /// Size_ExclusionChromatography
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  WeightMethod.Size_ExclusionChromatography([this.element])
      : dbValue = 'Size-ExclusionChromatography',
        super('Size-ExclusionChromatography', element);

  /// For instances where an Element is present but not value

  WeightMethod.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  WeightMethod._(super.input, [super.element])
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
    'SDS-PAGE',
    'Calculated',
    'LighScattering',
    'Viscosity',
    'GelPermeationCentrifugation',
    'End-groupAnalysis',
    'End-groupTitration',
    'Size-ExclusionChromatography',
  ];

  /// Returns the enum value with an element attached
  WeightMethod withElement(Element? newElement) {
    return WeightMethod._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'WeightMethod.$value';
}
