// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationRequest Course of Therapy Codes
class MedicationRequestCourseOfTherapyCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MedicationRequestCourseOfTherapyCodes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [MedicationRequestCourseOfTherapyCodes] from JSON.
  factory MedicationRequestCourseOfTherapyCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestCourseOfTherapyCodes.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationRequestCourseOfTherapyCodes cannot be constructed from JSON.',
      );
    }
    return MedicationRequestCourseOfTherapyCodes._(value, element: element);
  }

  /// continuous
  static final MedicationRequestCourseOfTherapyCodes continuous =
      MedicationRequestCourseOfTherapyCodes._(
    'continuous',
  );

  /// acute
  static final MedicationRequestCourseOfTherapyCodes acute =
      MedicationRequestCourseOfTherapyCodes._(
    'acute',
  );

  /// seasonal
  static final MedicationRequestCourseOfTherapyCodes seasonal =
      MedicationRequestCourseOfTherapyCodes._(
    'seasonal',
  );

  /// For instances where an Element is present but not value

  static final MedicationRequestCourseOfTherapyCodes elementOnly =
      MedicationRequestCourseOfTherapyCodes._('');

  /// List of all enum-like values
  static final List<MedicationRequestCourseOfTherapyCodes> values = [
    continuous,
    acute,
    seasonal,
  ];

  /// Clones the current instance
  @override
  MedicationRequestCourseOfTherapyCodes clone() =>
      MedicationRequestCourseOfTherapyCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MedicationRequestCourseOfTherapyCodes withElement(Element? newElement) {
    return MedicationRequestCourseOfTherapyCodes._(value, element: newElement);
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
  MedicationRequestCourseOfTherapyCodes copyWith({
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
    return MedicationRequestCourseOfTherapyCodes._(
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
