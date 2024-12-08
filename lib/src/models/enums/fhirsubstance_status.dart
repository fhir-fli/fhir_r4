// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code to indicate if the substance is actively used.
class FHIRSubstanceStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  FHIRSubstanceStatus._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [FHIRSubstanceStatus] from JSON.
  factory FHIRSubstanceStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRSubstanceStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FHIRSubstanceStatus cannot be constructed from JSON.',
      );
    }
    return FHIRSubstanceStatus._(value, element: element);
  }

  /// active
  static final FHIRSubstanceStatus active = FHIRSubstanceStatus._(
    'active',
  );

  /// inactive
  static final FHIRSubstanceStatus inactive = FHIRSubstanceStatus._(
    'inactive',
  );

  /// entered_in_error
  static final FHIRSubstanceStatus entered_in_error = FHIRSubstanceStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final FHIRSubstanceStatus elementOnly = FHIRSubstanceStatus._('');

  /// List of all enum-like values
  static final List<FHIRSubstanceStatus> values = [
    active,
    inactive,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  FHIRSubstanceStatus clone() => FHIRSubstanceStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FHIRSubstanceStatus withElement(Element? newElement) {
    return FHIRSubstanceStatus._(value, element: newElement);
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
  FHIRSubstanceStatus copyWith({
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
    return FHIRSubstanceStatus._(
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
