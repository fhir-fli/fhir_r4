// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// How a property is represented when serialized.
@Entity()
class PropertyRepresentation extends FhirCode {
  /// Factory constructor to create [PropertyRepresentation] from JSON.
  factory PropertyRepresentation.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PropertyRepresentation.elementOnly(element);
    }
    if (values.contains(value)) {
      return PropertyRepresentation._(value, element);
    }
    throw ArgumentError(
      'PropertyRepresentation.fromJson: JSON value is not a valid value',
    );
  }

  /// xmlAttr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PropertyRepresentation.xmlAttr([this.element])
      : dbValue = 'xmlAttr',
        super('xmlAttr', element);

  /// xmlText
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PropertyRepresentation.xmlText([this.element])
      : dbValue = 'xmlText',
        super('xmlText', element);

  /// typeAttr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PropertyRepresentation.typeAttr([this.element])
      : dbValue = 'typeAttr',
        super('typeAttr', element);

  /// cdaText
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PropertyRepresentation.cdaText([this.element])
      : dbValue = 'cdaText',
        super('cdaText', element);

  /// xhtml
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PropertyRepresentation.xhtml([this.element])
      : dbValue = 'xhtml',
        super('xhtml', element);

  /// For instances where an Element is present but not value

  PropertyRepresentation.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  PropertyRepresentation._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'xmlAttr',
    'xmlText',
    'typeAttr',
    'cdaText',
    'xhtml',
  ];

  /// Returns the enum value with an element attached
  PropertyRepresentation withElement(Element? newElement) {
    return PropertyRepresentation._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PropertyRepresentation.$value';
}
