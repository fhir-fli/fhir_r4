// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Estimate of the potential clinical harm, or seriousness, of a reaction
/// to an identified substance.
class AllergyIntoleranceCriticality extends FhirCode {
  // Private constructor for internal use (like enum)
  AllergyIntoleranceCriticality._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [AllergyIntoleranceCriticality] with element only
  factory AllergyIntoleranceCriticality.empty() =>
      AllergyIntoleranceCriticality._('');

  /// Factory constructor to create [AllergyIntoleranceCriticality] from JSON.
  factory AllergyIntoleranceCriticality.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceCriticality.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AllergyIntoleranceCriticality cannot be constructed from JSON.',
      );
    }
    return AllergyIntoleranceCriticality._(
      value,
      element: element,
    );
  }

  /// low
  static final AllergyIntoleranceCriticality low =
      AllergyIntoleranceCriticality._(
    'low',
  );

  /// high
  static final AllergyIntoleranceCriticality high =
      AllergyIntoleranceCriticality._(
    'high',
  );

  /// unable_to_assess
  static final AllergyIntoleranceCriticality unable_to_assess =
      AllergyIntoleranceCriticality._(
    'unable-to-assess',
  );

  /// For instances where an Element is present but not value

  static final AllergyIntoleranceCriticality elementOnly =
      AllergyIntoleranceCriticality._('');

  /// List of all enum-like values
  static final List<AllergyIntoleranceCriticality> values = [
    low,
    high,
    unable_to_assess,
  ];

  /// Clones the current instance
  @override
  AllergyIntoleranceCriticality clone() => AllergyIntoleranceCriticality._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AllergyIntoleranceCriticality withElement(Element? newElement) {
    return AllergyIntoleranceCriticality._(
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
  AllergyIntoleranceCriticality copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return AllergyIntoleranceCriticality._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
