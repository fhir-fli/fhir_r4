// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes for the main intent of the study.
class ResearchStudyPrimaryPurposeType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ResearchStudyPrimaryPurposeType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ResearchStudyPrimaryPurposeType] from JSON.
  factory ResearchStudyPrimaryPurposeType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyPrimaryPurposeType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResearchStudyPrimaryPurposeType cannot be constructed from JSON.',
      );
    }
    return ResearchStudyPrimaryPurposeType._(value: value, element: element);
  }

  /// treatment
  static final ResearchStudyPrimaryPurposeType treatment =
      ResearchStudyPrimaryPurposeType._(
    value: 'treatment',
  );

  /// prevention
  static final ResearchStudyPrimaryPurposeType prevention =
      ResearchStudyPrimaryPurposeType._(
    value: 'prevention',
  );

  /// diagnostic
  static final ResearchStudyPrimaryPurposeType diagnostic =
      ResearchStudyPrimaryPurposeType._(
    value: 'diagnostic',
  );

  /// supportive_care
  static final ResearchStudyPrimaryPurposeType supportive_care =
      ResearchStudyPrimaryPurposeType._(
    value: 'supportive-care',
  );

  /// screening
  static final ResearchStudyPrimaryPurposeType screening =
      ResearchStudyPrimaryPurposeType._(
    value: 'screening',
  );

  /// health_services_research
  static final ResearchStudyPrimaryPurposeType health_services_research =
      ResearchStudyPrimaryPurposeType._(
    value: 'health-services-research',
  );

  /// basic_science
  static final ResearchStudyPrimaryPurposeType basic_science =
      ResearchStudyPrimaryPurposeType._(
    value: 'basic-science',
  );

  /// device_feasibility
  static final ResearchStudyPrimaryPurposeType device_feasibility =
      ResearchStudyPrimaryPurposeType._(
    value: 'device-feasibility',
  );

  /// For instances where an Element is present but not value

  static final ResearchStudyPrimaryPurposeType elementOnly =
      ResearchStudyPrimaryPurposeType._(value: '');

  /// List of all enum-like values
  static final List<ResearchStudyPrimaryPurposeType> values = [
    treatment,
    prevention,
    diagnostic,
    supportive_care,
    screening,
    health_services_research,
    basic_science,
    device_feasibility,
  ];

  /// Clones the current instance
  @override
  ResearchStudyPrimaryPurposeType clone() => ResearchStudyPrimaryPurposeType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ResearchStudyPrimaryPurposeType withElement(Element? newElement) {
    return ResearchStudyPrimaryPurposeType._(value: value, element: newElement);
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
  ResearchStudyPrimaryPurposeType copyWith({
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
    return ResearchStudyPrimaryPurposeType._(
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
