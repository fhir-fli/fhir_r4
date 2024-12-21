// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Detailed information about the type of the image - its kind, purpose, or the kind of equipment used to generate it.
class MediaModality extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MediaModality._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [MediaModality] from JSON.
  factory MediaModality.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MediaModality.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MediaModality cannot be constructed from JSON.',
      );
    }
    return MediaModality._(value, element: element);
  }

  /// diagram
  static final MediaModality diagram = MediaModality._(
    'diagram',
  );

  /// fax
  static final MediaModality fax = MediaModality._(
    'fax',
  );

  /// scan
  static final MediaModality scan = MediaModality._(
    'scan',
  );

  /// retina
  static final MediaModality retina = MediaModality._(
    'retina',
  );

  /// fingerprint
  static final MediaModality fingerprint = MediaModality._(
    'fingerprint',
  );

  /// iris
  static final MediaModality iris = MediaModality._(
    'iris',
  );

  /// palm
  static final MediaModality palm = MediaModality._(
    'palm',
  );

  /// face
  static final MediaModality face = MediaModality._(
    'face',
  );

  /// For instances where an Element is present but not value

  static final MediaModality elementOnly = MediaModality._('');

  /// List of all enum-like values
  static final List<MediaModality> values = [
    diagram,
    fax,
    scan,
    retina,
    fingerprint,
    iris,
    palm,
    face,
  ];

  /// Clones the current instance
  @override
  MediaModality clone() => MediaModality._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MediaModality withElement(Element? newElement) {
    return MediaModality._(
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
  MediaModality copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return MediaModality._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
