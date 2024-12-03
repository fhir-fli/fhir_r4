// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Used to distinguish different roles a resource can play within a set of linked resources.
class LinkageType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  LinkageType._(super.value, [super.element]);

  /// Factory constructor to create [LinkageType] from JSON.
  factory LinkageType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LinkageType.elementOnly.withElement(element);
    }
    return LinkageType._(value, element);
  }

  /// source
  static final LinkageType source = LinkageType._(
    'source',
  );

  /// alternate
  static final LinkageType alternate = LinkageType._(
    'alternate',
  );

  /// historical
  static final LinkageType historical = LinkageType._(
    'historical',
  );

  /// For instances where an Element is present but not value

  static final LinkageType elementOnly = LinkageType._('');

  /// List of all enum-like values
  static final List<LinkageType> values = [
    source,
    alternate,
    historical,
  ];

  /// Clones the current instance
  @override
  LinkageType clone() => LinkageType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  LinkageType setElement(
    String name,
    dynamic elementValue,
  ) {
    return LinkageType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  LinkageType withElement(Element? newElement) {
    return LinkageType._(value, newElement);
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
  LinkageType copyWith({
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
    return LinkageType._(
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
