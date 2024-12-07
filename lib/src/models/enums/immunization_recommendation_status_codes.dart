// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the status of the patient towards perceived immunity against a vaccine preventable disease. This value set is provided as a suggestive example.
class ImmunizationRecommendationStatusCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ImmunizationRecommendationStatusCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ImmunizationRecommendationStatusCodes] from JSON.
  factory ImmunizationRecommendationStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRecommendationStatusCodes.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImmunizationRecommendationStatusCodes cannot be constructed from JSON.',
      );
    }
    return ImmunizationRecommendationStatusCodes._(
        value: value, element: element);
  }

  /// due
  static final ImmunizationRecommendationStatusCodes due =
      ImmunizationRecommendationStatusCodes._(
    value: 'due',
  );

  /// overdue
  static final ImmunizationRecommendationStatusCodes overdue =
      ImmunizationRecommendationStatusCodes._(
    value: 'overdue',
  );

  /// immune
  static final ImmunizationRecommendationStatusCodes immune =
      ImmunizationRecommendationStatusCodes._(
    value: 'immune',
  );

  /// contraindicated
  static final ImmunizationRecommendationStatusCodes contraindicated =
      ImmunizationRecommendationStatusCodes._(
    value: 'contraindicated',
  );

  /// complete
  static final ImmunizationRecommendationStatusCodes complete =
      ImmunizationRecommendationStatusCodes._(
    value: 'complete',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationRecommendationStatusCodes elementOnly =
      ImmunizationRecommendationStatusCodes._(value: '');

  /// List of all enum-like values
  static final List<ImmunizationRecommendationStatusCodes> values = [
    due,
    overdue,
    immune,
    contraindicated,
    complete,
  ];

  /// Clones the current instance
  @override
  ImmunizationRecommendationStatusCodes clone() =>
      ImmunizationRecommendationStatusCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ImmunizationRecommendationStatusCodes withElement(Element? newElement) {
    return ImmunizationRecommendationStatusCodes._(
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
  ImmunizationRecommendationStatusCodes copyWith({
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
    return ImmunizationRecommendationStatusCodes._(
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
