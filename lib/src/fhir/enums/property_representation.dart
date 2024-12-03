// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How a property is represented when serialized.
class PropertyRepresentation extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  PropertyRepresentation._(super.value, [super.element]);

  /// Factory constructor to create [PropertyRepresentation] from JSON.
  factory PropertyRepresentation.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PropertyRepresentation.elementOnly.withElement(element);
    }
    return PropertyRepresentation._(value, element);
  }

  /// xmlAttr
  static final PropertyRepresentation xmlAttr = PropertyRepresentation._(
    'xmlAttr',
  );

  /// xmlText
  static final PropertyRepresentation xmlText = PropertyRepresentation._(
    'xmlText',
  );

  /// typeAttr
  static final PropertyRepresentation typeAttr = PropertyRepresentation._(
    'typeAttr',
  );

  /// cdaText
  static final PropertyRepresentation cdaText = PropertyRepresentation._(
    'cdaText',
  );

  /// xhtml
  static final PropertyRepresentation xhtml = PropertyRepresentation._(
    'xhtml',
  );

  /// For instances where an Element is present but not value

  static final PropertyRepresentation elementOnly =
      PropertyRepresentation._('');

  /// List of all enum-like values
  static final List<PropertyRepresentation> values = [
    xmlAttr,
    xmlText,
    typeAttr,
    cdaText,
    xhtml,
  ];

  /// Clones the current instance
  @override
  PropertyRepresentation clone() =>
      PropertyRepresentation._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  PropertyRepresentation setElement(String name, dynamic elementValue) {
    return PropertyRepresentation._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  PropertyRepresentation withElement(Element? newElement) {
    return PropertyRepresentation._(value, newElement);
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
  PropertyRepresentation copyWith({
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
    return PropertyRepresentation._(
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
