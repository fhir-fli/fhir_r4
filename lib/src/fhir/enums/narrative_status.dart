// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of a resource narrative.
class NarrativeStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  NarrativeStatus._(super.value, [super.element]);

  /// Factory constructor to create [NarrativeStatus] from JSON.
  factory NarrativeStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NarrativeStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('NarrativeStatus cannot be constructed from JSON.');
    }
    return NarrativeStatus._(value, element);
  }

  /// generated
  static final NarrativeStatus generated = NarrativeStatus._(
    'generated',
  );

  /// extensions
  static final NarrativeStatus extensions = NarrativeStatus._(
    'extensions',
  );

  /// additional
  static final NarrativeStatus additional = NarrativeStatus._(
    'additional',
  );

  /// empty
  static final NarrativeStatus empty = NarrativeStatus._(
    'empty',
  );

  /// For instances where an Element is present but not value

  static final NarrativeStatus elementOnly = NarrativeStatus._('');

  /// List of all enum-like values
  static final List<NarrativeStatus> values = [
    generated,
    extensions,
    additional,
    empty,
  ];

  /// Clones the current instance
  @override
  NarrativeStatus clone() => NarrativeStatus._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  NarrativeStatus setElement(
    String name,
    dynamic elementValue,
  ) {
    return NarrativeStatus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  NarrativeStatus withElement(Element? newElement) {
    return NarrativeStatus._(value, newElement);
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
  NarrativeStatus copyWith({
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
    return NarrativeStatus._(
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
