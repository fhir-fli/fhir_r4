// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Clinical assessment of the severity of a reaction event as a whole,
/// potentially considering multiple different manifestations.
class AllergyIntoleranceSeverity extends FhirCode {
  // Private constructor for internal use (like enum)
  AllergyIntoleranceSeverity._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [AllergyIntoleranceSeverity] with element only
  factory AllergyIntoleranceSeverity.empty() =>
      AllergyIntoleranceSeverity._('');

  /// Factory constructor to create [AllergyIntoleranceSeverity] from JSON.
  factory AllergyIntoleranceSeverity.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceSeverity.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AllergyIntoleranceSeverity cannot be constructed from JSON.',
      );
    }
    return AllergyIntoleranceSeverity._(
      value,
      element: element,
    );
  }

  /// mild
  static final AllergyIntoleranceSeverity mild = AllergyIntoleranceSeverity._(
    'mild',
  );

  /// moderate
  static final AllergyIntoleranceSeverity moderate =
      AllergyIntoleranceSeverity._(
    'moderate',
  );

  /// severe
  static final AllergyIntoleranceSeverity severe = AllergyIntoleranceSeverity._(
    'severe',
  );

  /// For instances where an Element is present but not value

  static final AllergyIntoleranceSeverity elementOnly =
      AllergyIntoleranceSeverity._('');

  /// List of all enum-like values
  static final List<AllergyIntoleranceSeverity> values = [
    mild,
    moderate,
    severe,
  ];

  /// Clones the current instance
  @override
  AllergyIntoleranceSeverity clone() => AllergyIntoleranceSeverity._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AllergyIntoleranceSeverity withElement(Element? newElement) {
    return AllergyIntoleranceSeverity._(
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
  AllergyIntoleranceSeverity copyWith({
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
    return AllergyIntoleranceSeverity._(
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
