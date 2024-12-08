// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Preferred value set for Condition/Diagnosis severity grading.
class ConditionDiagnosisSeverity extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ConditionDiagnosisSeverity._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ConditionDiagnosisSeverity] from JSON.
  factory ConditionDiagnosisSeverity.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionDiagnosisSeverity.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConditionDiagnosisSeverity cannot be constructed from JSON.',
      );
    }
    return ConditionDiagnosisSeverity._(value, element: element);
  }

  /// value24484000
  static final ConditionDiagnosisSeverity value24484000 =
      ConditionDiagnosisSeverity._(
    '24484000',
  );

  /// value6736007
  static final ConditionDiagnosisSeverity value6736007 =
      ConditionDiagnosisSeverity._(
    '6736007',
  );

  /// value255604002
  static final ConditionDiagnosisSeverity value255604002 =
      ConditionDiagnosisSeverity._(
    '255604002',
  );

  /// For instances where an Element is present but not value

  static final ConditionDiagnosisSeverity elementOnly =
      ConditionDiagnosisSeverity._('');

  /// List of all enum-like values
  static final List<ConditionDiagnosisSeverity> values = [
    value24484000,
    value6736007,
    value255604002,
  ];

  /// Clones the current instance
  @override
  ConditionDiagnosisSeverity clone() => ConditionDiagnosisSeverity._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ConditionDiagnosisSeverity withElement(Element? newElement) {
    return ConditionDiagnosisSeverity._(value, element: newElement);
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
  ConditionDiagnosisSeverity copyWith({
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
    return ConditionDiagnosisSeverity._(
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
