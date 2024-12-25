// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How the system supports versioning for a resource.
class ResourceVersionPolicy extends FhirCode {
  // Private constructor for internal use (like enum)
  ResourceVersionPolicy._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [ResourceVersionPolicy] from JSON.
  factory ResourceVersionPolicy.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResourceVersionPolicy.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResourceVersionPolicy cannot be constructed from JSON.',
      );
    }
    return ResourceVersionPolicy._(
      value,
      element: element,
    );
  }

  /// no_version
  static final ResourceVersionPolicy no_version = ResourceVersionPolicy._(
    'no-version',
  );

  /// versioned
  static final ResourceVersionPolicy versioned = ResourceVersionPolicy._(
    'versioned',
  );

  /// versioned_update
  static final ResourceVersionPolicy versioned_update = ResourceVersionPolicy._(
    'versioned-update',
  );

  /// For instances where an Element is present but not value

  static final ResourceVersionPolicy elementOnly = ResourceVersionPolicy._('');

  /// List of all enum-like values
  static final List<ResourceVersionPolicy> values = [
    no_version,
    versioned,
    versioned_update,
  ];

  /// Clones the current instance
  @override
  ResourceVersionPolicy clone() => ResourceVersionPolicy._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ResourceVersionPolicy withElement(Element? newElement) {
    return ResourceVersionPolicy._(
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
  ResourceVersionPolicy copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ResourceVersionPolicy._(
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
