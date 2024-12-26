// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Type for access of external URI.
class RepositoryType extends FhirCode {
  // Private constructor for internal use (like enum)
  RepositoryType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [RepositoryType] from JSON.
  factory RepositoryType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RepositoryType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RepositoryType cannot be constructed from JSON.',
      );
    }
    return RepositoryType._(
      value,
      element: element,
    );
  }

  /// directlink
  static final RepositoryType directlink = RepositoryType._(
    'directlink',
  );

  /// openapi
  static final RepositoryType openapi = RepositoryType._(
    'openapi',
  );

  /// login
  static final RepositoryType login = RepositoryType._(
    'login',
  );

  /// oauth
  static final RepositoryType oauth = RepositoryType._(
    'oauth',
  );

  /// other
  static final RepositoryType other = RepositoryType._(
    'other',
  );

  /// For instances where an Element is present but not value

  static final RepositoryType elementOnly = RepositoryType._('');

  /// List of all enum-like values
  static final List<RepositoryType> values = [
    directlink,
    openapi,
    login,
    oauth,
    other,
  ];

  /// Clones the current instance
  @override
  RepositoryType clone() => RepositoryType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  RepositoryType withElement(Element? newElement) {
    return RepositoryType._(
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
  RepositoryType copyWith({
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
    return RepositoryType._(
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
