// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support the definition of dates relevant to recommendations for future doses of vaccines. This value set is provided as a suggestive example.
class ImmunizationRecommendationDateCriterionCodes
    extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ImmunizationRecommendationDateCriterionCodes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ImmunizationRecommendationDateCriterionCodes] from JSON.
  factory ImmunizationRecommendationDateCriterionCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRecommendationDateCriterionCodes.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImmunizationRecommendationDateCriterionCodes cannot be constructed from JSON.',
      );
    }
    return ImmunizationRecommendationDateCriterionCodes._(value,
        element: element);
  }

  /// value30981_5
  static final ImmunizationRecommendationDateCriterionCodes value30981_5 =
      ImmunizationRecommendationDateCriterionCodes._(
    '30981-5',
  );

  /// value30980_7
  static final ImmunizationRecommendationDateCriterionCodes value30980_7 =
      ImmunizationRecommendationDateCriterionCodes._(
    '30980-7',
  );

  /// value59777_3
  static final ImmunizationRecommendationDateCriterionCodes value59777_3 =
      ImmunizationRecommendationDateCriterionCodes._(
    '59777-3',
  );

  /// value59778_1
  static final ImmunizationRecommendationDateCriterionCodes value59778_1 =
      ImmunizationRecommendationDateCriterionCodes._(
    '59778-1',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationRecommendationDateCriterionCodes elementOnly =
      ImmunizationRecommendationDateCriterionCodes._('');

  /// List of all enum-like values
  static final List<ImmunizationRecommendationDateCriterionCodes> values = [
    value30981_5,
    value30980_7,
    value59777_3,
    value59778_1,
  ];

  /// Clones the current instance
  @override
  ImmunizationRecommendationDateCriterionCodes clone() =>
      ImmunizationRecommendationDateCriterionCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ImmunizationRecommendationDateCriterionCodes withElement(
      Element? newElement) {
    return ImmunizationRecommendationDateCriterionCodes._(
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
  ImmunizationRecommendationDateCriterionCodes copyWith({
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
    return ImmunizationRecommendationDateCriterionCodes._(
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
