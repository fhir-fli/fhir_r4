// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the patient's eligibility for a vaccination program. This value set is provided as a suggestive example.
class ImmunizationProgramEligibility extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ImmunizationProgramEligibility._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ImmunizationProgramEligibility] from JSON.
  factory ImmunizationProgramEligibility.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationProgramEligibility.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImmunizationProgramEligibility cannot be constructed from JSON.',
      );
    }
    return ImmunizationProgramEligibility._(value: value, element: element);
  }

  /// ineligible
  static final ImmunizationProgramEligibility ineligible =
      ImmunizationProgramEligibility._(
    value: 'ineligible',
  );

  /// uninsured
  static final ImmunizationProgramEligibility uninsured =
      ImmunizationProgramEligibility._(
    value: 'uninsured',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationProgramEligibility elementOnly =
      ImmunizationProgramEligibility._(value: '');

  /// List of all enum-like values
  static final List<ImmunizationProgramEligibility> values = [
    ineligible,
    uninsured,
  ];

  /// Clones the current instance
  @override
  ImmunizationProgramEligibility clone() => ImmunizationProgramEligibility._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ImmunizationProgramEligibility withElement(Element? newElement) {
    return ImmunizationProgramEligibility._(value: value, element: newElement);
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
  ImmunizationProgramEligibility copyWith({
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
    return ImmunizationProgramEligibility._(
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
