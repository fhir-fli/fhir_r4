// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The presentation types of notes.
class NoteType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  NoteType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [NoteType] from JSON.
  factory NoteType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NoteType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NoteType cannot be constructed from JSON.',
      );
    }
    return NoteType._(value, element: element);
  }

  /// display
  static final NoteType display = NoteType._(
    'display',
  );

  /// print
  static final NoteType print = NoteType._(
    'print',
  );

  /// printoper
  static final NoteType printoper = NoteType._(
    'printoper',
  );

  /// For instances where an Element is present but not value

  static final NoteType elementOnly = NoteType._('');

  /// List of all enum-like values
  static final List<NoteType> values = [
    display,
    print,
    printoper,
  ];

  /// Clones the current instance
  @override
  NoteType clone() => NoteType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  NoteType withElement(Element? newElement) {
    return NoteType._(
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
  NoteType copyWith({
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
    return NoteType._(
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
