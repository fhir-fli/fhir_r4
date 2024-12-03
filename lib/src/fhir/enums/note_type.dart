// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The presentation types of notes.
class NoteType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  NoteType._(super.value, [super.element]);

  /// Factory constructor to create [NoteType] from JSON.
  factory NoteType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NoteType.elementOnly.withElement(element);
    }
    return NoteType._(value, element);
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
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  NoteType setElement(
    String name,
    dynamic elementValue,
  ) {
    return NoteType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  NoteType withElement(Element? newElement) {
    return NoteType._(value, newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return NoteType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
