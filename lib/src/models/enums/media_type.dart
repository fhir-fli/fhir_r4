// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes for high level media categories.
class MediaType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MediaType._(super.value, [super.element]);

  /// Factory constructor to create [MediaType] from JSON.
  factory MediaType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MediaType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MediaType cannot be constructed from JSON.',
      );
    }
    return MediaType._(value, element);
  }

  /// image
  static final MediaType image = MediaType._(
    'image',
  );

  /// video
  static final MediaType video = MediaType._(
    'video',
  );

  /// audio
  static final MediaType audio = MediaType._(
    'audio',
  );

  /// For instances where an Element is present but not value

  static final MediaType elementOnly = MediaType._('');

  /// List of all enum-like values
  static final List<MediaType> values = [
    image,
    video,
    audio,
  ];

  /// Clones the current instance
  @override
  MediaType clone() => MediaType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  MediaType setElement(
    String name,
    dynamic elementValue,
  ) {
    return MediaType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  MediaType withElement(Element? newElement) {
    return MediaType._(value, newElement);
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
  MediaType copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return MediaType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
