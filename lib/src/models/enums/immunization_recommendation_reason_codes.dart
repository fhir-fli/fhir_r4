// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reasons why a given recommendation status is assigned. This value set is provided as a suggestive example and includes SNOMED CT concepts.
class ImmunizationRecommendationReasonCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ImmunizationRecommendationReasonCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ImmunizationRecommendationReasonCodes] from JSON.
  factory ImmunizationRecommendationReasonCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRecommendationReasonCodes.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImmunizationRecommendationReasonCodes cannot be constructed from JSON.',
      );
    }
    return ImmunizationRecommendationReasonCodes._(
        value: value, element: element);
  }

  /// value77176002
  static final ImmunizationRecommendationReasonCodes value77176002 =
      ImmunizationRecommendationReasonCodes._(
    value: '77176002',
  );

  /// value77386006
  static final ImmunizationRecommendationReasonCodes value77386006 =
      ImmunizationRecommendationReasonCodes._(
    value: '77386006',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationRecommendationReasonCodes elementOnly =
      ImmunizationRecommendationReasonCodes._(value: '');

  /// List of all enum-like values
  static final List<ImmunizationRecommendationReasonCodes> values = [
    value77176002,
    value77386006,
  ];

  /// Clones the current instance
  @override
  ImmunizationRecommendationReasonCodes clone() =>
      ImmunizationRecommendationReasonCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ImmunizationRecommendationReasonCodes withElement(Element? newElement) {
    return ImmunizationRecommendationReasonCodes._(
        value: value, element: newElement);
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
  ImmunizationRecommendationReasonCodes copyWith({
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
    return ImmunizationRecommendationReasonCodes._(
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
