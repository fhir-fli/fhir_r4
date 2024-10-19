// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Overall categorization of the event, e.g. product-related or situational.
@Entity()
class AdverseEventCategory extends FhirCode {
  /// Factory constructor to create [AdverseEventCategory] from JSON.
  factory AdverseEventCategory.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventCategory.elementOnly(element);
    }
    if (values.contains(value)) {
      return AdverseEventCategory._(value, element);
    }
    throw ArgumentError(
      'AdverseEventCategory.fromJson: JSON value is not a valid value',
    );
  }

  /// product_problem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCategory.product_problem([this.element])
      : dbValue = 'product-problem',
        super('product-problem', element);

  /// product_quality
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCategory.product_quality([this.element])
      : dbValue = 'product-quality',
        super('product-quality', element);

  /// product_use_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCategory.product_use_error([this.element])
      : dbValue = 'product-use-error',
        super('product-use-error', element);

  /// wrong_dose
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCategory.wrong_dose([this.element])
      : dbValue = 'wrong-dose',
        super('wrong-dose', element);

  /// incorrect_prescribing_information
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCategory.incorrect_prescribing_information([this.element])
      : dbValue = 'incorrect-prescribing-information',
        super('incorrect-prescribing-information', element);

  /// wrong_technique
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCategory.wrong_technique([this.element])
      : dbValue = 'wrong-technique',
        super('wrong-technique', element);

  /// wrong_route_of_administration
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCategory.wrong_route_of_administration([this.element])
      : dbValue = 'wrong-route-of-administration',
        super('wrong-route-of-administration', element);

  /// wrong_rate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCategory.wrong_rate([this.element])
      : dbValue = 'wrong-rate',
        super('wrong-rate', element);

  /// wrong_duration
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCategory.wrong_duration([this.element])
      : dbValue = 'wrong-duration',
        super('wrong-duration', element);

  /// wrong_time
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCategory.wrong_time([this.element])
      : dbValue = 'wrong-time',
        super('wrong-time', element);

  /// expired_drug
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCategory.expired_drug([this.element])
      : dbValue = 'expired-drug',
        super('expired-drug', element);

  /// medical_device_use_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCategory.medical_device_use_error([this.element])
      : dbValue = 'medical-device-use-error',
        super('medical-device-use-error', element);

  /// problem_different_manufacturer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCategory.problem_different_manufacturer([this.element])
      : dbValue = 'problem-different-manufacturer',
        super('problem-different-manufacturer', element);

  /// unsafe_physical_environment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCategory.unsafe_physical_environment([this.element])
      : dbValue = 'unsafe-physical-environment',
        super('unsafe-physical-environment', element);

  /// For instances where an Element is present but not value

  AdverseEventCategory.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AdverseEventCategory._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'product-problem',
    'product-quality',
    'product-use-error',
    'wrong-dose',
    'incorrect-prescribing-information',
    'wrong-technique',
    'wrong-route-of-administration',
    'wrong-rate',
    'wrong-duration',
    'wrong-time',
    'expired-drug',
    'medical-device-use-error',
    'problem-different-manufacturer',
    'unsafe-physical-environment',
  ];

  /// Returns the enum value with an element attached
  AdverseEventCategory withElement(Element? newElement) {
    return AdverseEventCategory._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AdverseEventCategory.$value';
}
