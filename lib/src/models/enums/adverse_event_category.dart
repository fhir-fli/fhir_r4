// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Overall categorization of the event, e.g. product-related or situational.
class AdverseEventCategory extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AdverseEventCategory._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [AdverseEventCategory] from JSON.
  factory AdverseEventCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventCategory.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdverseEventCategory cannot be constructed from JSON.',
      );
    }
    return AdverseEventCategory._(value: value, element: element);
  }

  /// product_problem
  static final AdverseEventCategory product_problem = AdverseEventCategory._(
    value: 'product-problem',
  );

  /// product_quality
  static final AdverseEventCategory product_quality = AdverseEventCategory._(
    value: 'product-quality',
  );

  /// product_use_error
  static final AdverseEventCategory product_use_error = AdverseEventCategory._(
    value: 'product-use-error',
  );

  /// wrong_dose
  static final AdverseEventCategory wrong_dose = AdverseEventCategory._(
    value: 'wrong-dose',
  );

  /// incorrect_prescribing_information
  static final AdverseEventCategory incorrect_prescribing_information =
      AdverseEventCategory._(
    value: 'incorrect-prescribing-information',
  );

  /// wrong_technique
  static final AdverseEventCategory wrong_technique = AdverseEventCategory._(
    value: 'wrong-technique',
  );

  /// wrong_route_of_administration
  static final AdverseEventCategory wrong_route_of_administration =
      AdverseEventCategory._(
    value: 'wrong-route-of-administration',
  );

  /// wrong_rate
  static final AdverseEventCategory wrong_rate = AdverseEventCategory._(
    value: 'wrong-rate',
  );

  /// wrong_duration
  static final AdverseEventCategory wrong_duration = AdverseEventCategory._(
    value: 'wrong-duration',
  );

  /// wrong_time
  static final AdverseEventCategory wrong_time = AdverseEventCategory._(
    value: 'wrong-time',
  );

  /// expired_drug
  static final AdverseEventCategory expired_drug = AdverseEventCategory._(
    value: 'expired-drug',
  );

  /// medical_device_use_error
  static final AdverseEventCategory medical_device_use_error =
      AdverseEventCategory._(
    value: 'medical-device-use-error',
  );

  /// problem_different_manufacturer
  static final AdverseEventCategory problem_different_manufacturer =
      AdverseEventCategory._(
    value: 'problem-different-manufacturer',
  );

  /// unsafe_physical_environment
  static final AdverseEventCategory unsafe_physical_environment =
      AdverseEventCategory._(
    value: 'unsafe-physical-environment',
  );

  /// For instances where an Element is present but not value

  static final AdverseEventCategory elementOnly =
      AdverseEventCategory._(value: '');

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

  /// Clones the current instance
  @override
  AdverseEventCategory clone() => AdverseEventCategory._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AdverseEventCategory withElement(Element? newElement) {
    return AdverseEventCategory._(value: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  AdverseEventCategory copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return AdverseEventCategory._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
