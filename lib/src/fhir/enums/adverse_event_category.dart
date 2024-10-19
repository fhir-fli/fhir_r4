// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Overall categorization of the event, e.g. product-related or situational.
class AdverseEventCategory {
  // Private constructor for internal use (like enum)
  AdverseEventCategory._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AdverseEventCategory values
  /// product_problem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCategory product_problem = AdverseEventCategory._(
    'product-problem',
  );

  /// product_quality
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCategory product_quality = AdverseEventCategory._(
    'product-quality',
  );

  /// product_use_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCategory product_use_error = AdverseEventCategory._(
    'product-use-error',
  );

  /// wrong_dose
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCategory wrong_dose = AdverseEventCategory._(
    'wrong-dose',
  );

  /// incorrect_prescribing_information
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCategory incorrect_prescribing_information =
      AdverseEventCategory._(
    'incorrect-prescribing-information',
  );

  /// wrong_technique
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCategory wrong_technique = AdverseEventCategory._(
    'wrong-technique',
  );

  /// wrong_route_of_administration
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCategory wrong_route_of_administration =
      AdverseEventCategory._(
    'wrong-route-of-administration',
  );

  /// wrong_rate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCategory wrong_rate = AdverseEventCategory._(
    'wrong-rate',
  );

  /// wrong_duration
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCategory wrong_duration = AdverseEventCategory._(
    'wrong-duration',
  );

  /// wrong_time
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCategory wrong_time = AdverseEventCategory._(
    'wrong-time',
  );

  /// expired_drug
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCategory expired_drug = AdverseEventCategory._(
    'expired-drug',
  );

  /// medical_device_use_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCategory medical_device_use_error =
      AdverseEventCategory._(
    'medical-device-use-error',
  );

  /// problem_different_manufacturer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCategory problem_different_manufacturer =
      AdverseEventCategory._(
    'problem-different-manufacturer',
  );

  /// unsafe_physical_environment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventCategory unsafe_physical_environment =
      AdverseEventCategory._(
    'unsafe-physical-environment',
  );

  /// For instances where an Element is present but not value

  static final AdverseEventCategory elementOnly = AdverseEventCategory._('');

  /// List of all enum-like values
  static final List<AdverseEventCategory> values = [
    product_problem,
    product_quality,
    product_use_error,
    wrong_dose,
    incorrect_prescribing_information,
    wrong_technique,
    wrong_route_of_administration,
    wrong_rate,
    wrong_duration,
    wrong_time,
    expired_drug,
    medical_device_use_error,
    problem_different_manufacturer,
    unsafe_physical_environment,
  ];

  /// Returns the enum value with an element attached
  AdverseEventCategory withElement(Element? newElement) {
    return AdverseEventCategory._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AdverseEventCategory] from JSON.
  static AdverseEventCategory fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventCategory.elementOnly.withElement(element);
    }
    return AdverseEventCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AdverseEventCategory.$fhirCode';
}
