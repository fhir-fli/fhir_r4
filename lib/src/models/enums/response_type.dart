// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The kind of response to a message.
class ResponseType extends FhirCode {
  // Private constructor for internal use (like enum)
  ResponseType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [ResponseType] from JSON.
  factory ResponseType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResponseType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResponseType cannot be constructed from JSON.',
      );
    }
    return ResponseType._(
      value,
      element: element,
    );
  }

  /// ok
  static final ResponseType ok = ResponseType._(
    'ok',
  );

  /// transient_error
  static final ResponseType transient_error = ResponseType._(
    'transient-error',
  );

  /// fatal_error
  static final ResponseType fatal_error = ResponseType._(
    'fatal-error',
  );

  /// For instances where an Element is present but not value

  static final ResponseType elementOnly = ResponseType._('');

  /// List of all enum-like values
  static final List<ResponseType> values = [
    ok,
    transient_error,
    fatal_error,
  ];

  /// Clones the current instance
  @override
  ResponseType clone() => ResponseType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ResponseType withElement(Element? newElement) {
    return ResponseType._(
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
  ResponseType copyWith({
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
    return ResponseType._(
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
