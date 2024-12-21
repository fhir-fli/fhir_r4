// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the disease targeted by a vaccination recommendation. This value set is provided as a suggestive example and includes the SNOMED CT concepts from the 64572001 (Disease) hierarchy.
class ImmunizationRecommendationTargetDiseaseCodes
    extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ImmunizationRecommendationTargetDiseaseCodes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ImmunizationRecommendationTargetDiseaseCodes] from JSON.
  factory ImmunizationRecommendationTargetDiseaseCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRecommendationTargetDiseaseCodes.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImmunizationRecommendationTargetDiseaseCodes cannot be constructed from JSON.',
      );
    }
    return ImmunizationRecommendationTargetDiseaseCodes._(value,
        element: element);
  }

  /// value1857005
  static final ImmunizationRecommendationTargetDiseaseCodes value1857005 =
      ImmunizationRecommendationTargetDiseaseCodes._(
    '1857005',
  );

  /// value397430003
  static final ImmunizationRecommendationTargetDiseaseCodes value397430003 =
      ImmunizationRecommendationTargetDiseaseCodes._(
    '397430003',
  );

  /// value14189004
  static final ImmunizationRecommendationTargetDiseaseCodes value14189004 =
      ImmunizationRecommendationTargetDiseaseCodes._(
    '14189004',
  );

  /// value36989005
  static final ImmunizationRecommendationTargetDiseaseCodes value36989005 =
      ImmunizationRecommendationTargetDiseaseCodes._(
    '36989005',
  );

  /// value36653000
  static final ImmunizationRecommendationTargetDiseaseCodes value36653000 =
      ImmunizationRecommendationTargetDiseaseCodes._(
    '36653000',
  );

  /// value76902006
  static final ImmunizationRecommendationTargetDiseaseCodes value76902006 =
      ImmunizationRecommendationTargetDiseaseCodes._(
    '76902006',
  );

  /// value709410003
  static final ImmunizationRecommendationTargetDiseaseCodes value709410003 =
      ImmunizationRecommendationTargetDiseaseCodes._(
    '709410003',
  );

  /// value27836007
  static final ImmunizationRecommendationTargetDiseaseCodes value27836007 =
      ImmunizationRecommendationTargetDiseaseCodes._(
    '27836007',
  );

  /// value398102009
  static final ImmunizationRecommendationTargetDiseaseCodes value398102009 =
      ImmunizationRecommendationTargetDiseaseCodes._(
    '398102009',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationRecommendationTargetDiseaseCodes elementOnly =
      ImmunizationRecommendationTargetDiseaseCodes._('');

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

  /// Clones the current instance
  @override
  ImmunizationRecommendationTargetDiseaseCodes clone() =>
      ImmunizationRecommendationTargetDiseaseCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ImmunizationRecommendationTargetDiseaseCodes withElement(
      Element? newElement) {
    return ImmunizationRecommendationTargetDiseaseCodes._(
      value,
      element: newElement,
    );
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
  ImmunizationRecommendationTargetDiseaseCodes copyWith({
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
    return ImmunizationRecommendationTargetDiseaseCodes._(
      newValue ?? value,
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
