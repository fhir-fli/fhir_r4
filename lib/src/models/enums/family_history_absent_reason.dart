// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes describing the reason why a family member's history is not available.
class FamilyHistoryAbsentReason extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  FamilyHistoryAbsentReason._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [FamilyHistoryAbsentReason] from JSON.
  factory FamilyHistoryAbsentReason.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FamilyHistoryAbsentReason.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FamilyHistoryAbsentReason cannot be constructed from JSON.',
      );
    }
    return FamilyHistoryAbsentReason._(value, element: element);
  }

  /// subject_unknown
  static final FamilyHistoryAbsentReason subject_unknown =
      FamilyHistoryAbsentReason._(
    'subject-unknown',
  );

  /// withheld
  static final FamilyHistoryAbsentReason withheld = FamilyHistoryAbsentReason._(
    'withheld',
  );

  /// unable_to_obtain
  static final FamilyHistoryAbsentReason unable_to_obtain =
      FamilyHistoryAbsentReason._(
    'unable-to-obtain',
  );

  /// deferred_
  static final FamilyHistoryAbsentReason deferred_ =
      FamilyHistoryAbsentReason._(
    'deferred',
  );

  /// For instances where an Element is present but not value

  static final FamilyHistoryAbsentReason elementOnly =
      FamilyHistoryAbsentReason._('');

  /// List of all enum-like values
  static final List<FamilyHistoryAbsentReason> values = [
    subject_unknown,
    withheld,
    unable_to_obtain,
    deferred_,
  ];

  /// Clones the current instance
  @override
  FamilyHistoryAbsentReason clone() => FamilyHistoryAbsentReason._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FamilyHistoryAbsentReason withElement(Element? newElement) {
    return FamilyHistoryAbsentReason._(
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
  FamilyHistoryAbsentReason copyWith({
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
    return FamilyHistoryAbsentReason._(
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
