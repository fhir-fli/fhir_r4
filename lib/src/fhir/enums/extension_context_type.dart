// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// How an extension context is interpreted.
@Entity()
class ExtensionContextType extends FhirCode {
  /// Factory constructor to create [ExtensionContextType] from JSON.
  factory ExtensionContextType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExtensionContextType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ExtensionContextType._(value, element);
    }
    throw ArgumentError(
      'ExtensionContextType.fromJson: JSON value is not a valid value',
    );
  }

  /// fhirpath
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExtensionContextType.fhirpath([this.element])
      : dbValue = 'fhirpath',
        super('fhirpath', element);

  /// element_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExtensionContextType.element_([this.element])
      : dbValue = 'element',
        super('element', element);

  /// extension_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExtensionContextType.extension_([this.element])
      : dbValue = 'extension',
        super('extension', element);

  /// For instances where an Element is present but not value

  ExtensionContextType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ExtensionContextType._(super.input, [super.element])
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
    'fhirpath',
    'element',
    'extension',
  ];

  /// Returns the enum value with an element attached
  ExtensionContextType withElement(Element? newElement) {
    return ExtensionContextType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExtensionContextType.$value';
}
