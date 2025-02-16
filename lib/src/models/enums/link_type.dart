// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The type of link between this patient resource and another patient
/// resource.
class LinkType extends FhirCode {
  // Private constructor for internal use (like enum)
  LinkType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [LinkType] with element only
  factory LinkType.empty() => LinkType._('');

  /// Factory constructor to create [LinkType] from JSON.
  factory LinkType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LinkType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'LinkType cannot be constructed from JSON.',
      );
    }
    return LinkType._(
      value,
      element: element,
    );
  }

  /// replaced_by
  static final LinkType replaced_by = LinkType._(
    'replaced-by',
  );

  /// replaces
  static final LinkType replaces = LinkType._(
    'replaces',
  );

  /// refer
  static final LinkType refer = LinkType._(
    'refer',
  );

  /// seealso
  static final LinkType seealso = LinkType._(
    'seealso',
  );

  /// For instances where an Element is present but not value

  static final LinkType elementOnly = LinkType._('');

  /// List of all enum-like values
  static final List<LinkType> values = [
    replaced_by,
    replaces,
    refer,
    seealso,
  ];

  /// Clones the current instance
  @override
  LinkType clone() => LinkType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  LinkType withElement(Element? newElement) {
    return LinkType._(
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
  LinkType copyWith({
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
    return LinkType._(
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
