// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code specifying the types of information being requested.
class EligibilityResponsePurpose extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EligibilityResponsePurpose._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [EligibilityResponsePurpose] from JSON.
  factory EligibilityResponsePurpose.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EligibilityResponsePurpose.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EligibilityResponsePurpose cannot be constructed from JSON.',
      );
    }
    return EligibilityResponsePurpose._(value, element: element);
  }

  /// auth_requirements
  static final EligibilityResponsePurpose auth_requirements =
      EligibilityResponsePurpose._(
    'auth-requirements',
  );

  /// benefits
  static final EligibilityResponsePurpose benefits =
      EligibilityResponsePurpose._(
    'benefits',
  );

  /// discovery
  static final EligibilityResponsePurpose discovery =
      EligibilityResponsePurpose._(
    'discovery',
  );

  /// validation
  static final EligibilityResponsePurpose validation =
      EligibilityResponsePurpose._(
    'validation',
  );

  /// For instances where an Element is present but not value

  static final EligibilityResponsePurpose elementOnly =
      EligibilityResponsePurpose._('');

  /// List of all enum-like values
  static final List<EligibilityResponsePurpose> values = [
    auth_requirements,
    benefits,
    discovery,
    validation,
  ];

  /// Clones the current instance
  @override
  EligibilityResponsePurpose clone() => EligibilityResponsePurpose._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EligibilityResponsePurpose withElement(Element? newElement) {
    return EligibilityResponsePurpose._(
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
  EligibilityResponsePurpose copyWith({
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
    return EligibilityResponsePurpose._(
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
