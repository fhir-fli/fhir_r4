// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Behavior a server can exhibit when a criteria state does not exist
/// (e.g., state prior to a create or after a delete).
class CriteriaNotExistsBehavior extends FhirCode {
  // Private constructor for internal use (like enum)
  CriteriaNotExistsBehavior._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [CriteriaNotExistsBehavior] from JSON.
  factory CriteriaNotExistsBehavior.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CriteriaNotExistsBehavior.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CriteriaNotExistsBehavior cannot be constructed from JSON.',
      );
    }
    return CriteriaNotExistsBehavior._(
      value,
      element: element,
    );
  }

  /// test_passes
  static final CriteriaNotExistsBehavior test_passes =
      CriteriaNotExistsBehavior._(
    'test-passes',
  );

  /// test_fails
  static final CriteriaNotExistsBehavior test_fails =
      CriteriaNotExistsBehavior._(
    'test-fails',
  );

  /// For instances where an Element is present but not value

  static final CriteriaNotExistsBehavior elementOnly =
      CriteriaNotExistsBehavior._('');

  /// List of all enum-like values
  static final List<CriteriaNotExistsBehavior> values = [
    test_passes,
    test_fails,
  ];

  /// Clones the current instance
  @override
  CriteriaNotExistsBehavior clone() => CriteriaNotExistsBehavior._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CriteriaNotExistsBehavior withElement(Element? newElement) {
    return CriteriaNotExistsBehavior._(
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
  CriteriaNotExistsBehavior copyWith({
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
    return CriteriaNotExistsBehavior._(
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
