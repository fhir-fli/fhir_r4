// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The lifecycle status of an artifact.
class PublicationStatus extends FhirCode {
  // Private constructor for internal use (like enum)
  PublicationStatus._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  });

  /// Factory constructor to create [PublicationStatus] from JSON.
  factory PublicationStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PublicationStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PublicationStatus cannot be constructed from JSON.',
      );
    }
    return PublicationStatus._(
      value,
      element: element,
    );
  }

  /// draft
  static final PublicationStatus draft = PublicationStatus._(
    'draft',
  );

  /// active
  static final PublicationStatus active = PublicationStatus._(
    'active',
  );

  /// retired
  static final PublicationStatus retired = PublicationStatus._(
    'retired',
  );

  /// unknown
  static final PublicationStatus unknown = PublicationStatus._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final PublicationStatus elementOnly = PublicationStatus._('');

  /// List of all enum-like values
  static final List<PublicationStatus> values = [
    draft,
    active,
    retired,
    unknown,
  ];

  /// Clones the current instance
  @override
  PublicationStatus clone() => PublicationStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  PublicationStatus withElement(Element? newElement) {
    return PublicationStatus._(
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
  PublicationStatus copyWith({
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
    return PublicationStatus._(
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
