// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code specifying the state of the resource instance.
class ExplanationOfBenefitStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ExplanationOfBenefitStatus._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ExplanationOfBenefitStatus] from JSON.
  factory ExplanationOfBenefitStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExplanationOfBenefitStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExplanationOfBenefitStatus cannot be constructed from JSON.',
      );
    }
    return ExplanationOfBenefitStatus._(value: value, element: element);
  }

  /// active
  static final ExplanationOfBenefitStatus active = ExplanationOfBenefitStatus._(
    value: 'active',
  );

  /// cancelled
  static final ExplanationOfBenefitStatus cancelled =
      ExplanationOfBenefitStatus._(
    value: 'cancelled',
  );

  /// draft
  static final ExplanationOfBenefitStatus draft = ExplanationOfBenefitStatus._(
    value: 'draft',
  );

  /// entered_in_error
  static final ExplanationOfBenefitStatus entered_in_error =
      ExplanationOfBenefitStatus._(
    value: 'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final ExplanationOfBenefitStatus elementOnly =
      ExplanationOfBenefitStatus._(value: '');

  /// List of all enum-like values
  static final List<ExplanationOfBenefitStatus> values = [
    active,
    cancelled,
    draft,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  ExplanationOfBenefitStatus clone() => ExplanationOfBenefitStatus._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ExplanationOfBenefitStatus withElement(Element? newElement) {
    return ExplanationOfBenefitStatus._(value: value, element: newElement);
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
  ExplanationOfBenefitStatus copyWith({
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
    return ExplanationOfBenefitStatus._(
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
