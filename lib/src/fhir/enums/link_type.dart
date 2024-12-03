// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of link between this patient resource and another patient resource.
class LinkType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  LinkType._(super.value, [super.element]);

  /// Factory constructor to create [LinkType] from JSON.
  factory LinkType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LinkType.elementOnly.withElement(element);
    }
    return LinkType._(value, element);
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
  LinkType clone() => LinkType._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  LinkType setElement(String name, dynamic elementValue) {
    return LinkType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  LinkType withElement(Element? newElement) {
    return LinkType._(value, newElement);
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
    return LinkType._(
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
