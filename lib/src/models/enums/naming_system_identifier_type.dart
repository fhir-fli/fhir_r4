// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Identifies the style of unique identifier used to identify a namespace.
class NamingSystemIdentifierType extends FhirCode {
  // Private constructor for internal use (like enum)
  NamingSystemIdentifierType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [NamingSystemIdentifierType] from JSON.
  factory NamingSystemIdentifierType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NamingSystemIdentifierType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NamingSystemIdentifierType cannot be constructed from JSON.',
      );
    }
    return NamingSystemIdentifierType._(
      value,
      element: element,
    );
  }

  /// oid
  static final NamingSystemIdentifierType oid = NamingSystemIdentifierType._(
    'oid',
  );

  /// uuid
  static final NamingSystemIdentifierType uuid = NamingSystemIdentifierType._(
    'uuid',
  );

  /// uri
  static final NamingSystemIdentifierType uri = NamingSystemIdentifierType._(
    'uri',
  );

  /// other
  static final NamingSystemIdentifierType other = NamingSystemIdentifierType._(
    'other',
  );

  /// For instances where an Element is present but not value

  static final NamingSystemIdentifierType elementOnly =
      NamingSystemIdentifierType._('');

  /// List of all enum-like values
  static final List<NamingSystemIdentifierType> values = [
    oid,
    uuid,
    uri,
    other,
  ];

  /// Clones the current instance
  @override
  NamingSystemIdentifierType clone() => NamingSystemIdentifierType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  NamingSystemIdentifierType withElement(Element? newElement) {
    return NamingSystemIdentifierType._(
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
  NamingSystemIdentifierType copyWith({
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
    return NamingSystemIdentifierType._(
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
