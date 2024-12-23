// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The level of confidence that this link represents the same actual person, based on NIST Authentication Levels.
class IdentityAssuranceLevel extends FhirCode {
  // Private constructor for internal use (like enum)
  IdentityAssuranceLevel._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  });

  /// Factory constructor to create [IdentityAssuranceLevel] from JSON.
  factory IdentityAssuranceLevel.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentityAssuranceLevel.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IdentityAssuranceLevel cannot be constructed from JSON.',
      );
    }
    return IdentityAssuranceLevel._(
      value,
      element: element,
    );
  }

  /// level1
  static final IdentityAssuranceLevel level1 = IdentityAssuranceLevel._(
    'level1',
  );

  /// level2
  static final IdentityAssuranceLevel level2 = IdentityAssuranceLevel._(
    'level2',
  );

  /// level3
  static final IdentityAssuranceLevel level3 = IdentityAssuranceLevel._(
    'level3',
  );

  /// level4
  static final IdentityAssuranceLevel level4 = IdentityAssuranceLevel._(
    'level4',
  );

  /// For instances where an Element is present but not value

  static final IdentityAssuranceLevel elementOnly =
      IdentityAssuranceLevel._('');

  /// List of all enum-like values
  static final List<IdentityAssuranceLevel> values = [
    level1,
    level2,
    level3,
    level4,
  ];

  /// Clones the current instance
  @override
  IdentityAssuranceLevel clone() => IdentityAssuranceLevel._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  IdentityAssuranceLevel withElement(Element? newElement) {
    return IdentityAssuranceLevel._(
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
  IdentityAssuranceLevel copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return IdentityAssuranceLevel._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
    );
  }
}
