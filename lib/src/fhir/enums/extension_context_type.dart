// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How an extension context is interpreted.
class ExtensionContextType {
  // Private constructor for internal use (like enum)
  ExtensionContextType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ExtensionContextType values
  /// fhirpath
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExtensionContextType fhirpath = ExtensionContextType._(
    'fhirpath',
  );

  /// element_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExtensionContextType element_ = ExtensionContextType._(
    'element',
  );

  /// extension_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExtensionContextType extension_ = ExtensionContextType._(
    'extension',
  );

  /// For instances where an Element is present but not value

  static final ExtensionContextType elementOnly = ExtensionContextType._('');

  /// List of all enum-like values
  static final List<ExtensionContextType> values = [
    fhirpath,
    element_,
    extension_,
  ];

  /// Returns the enum value with an element attached
  ExtensionContextType withElement(Element? newElement) {
    return ExtensionContextType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ExtensionContextType] from JSON.
  static ExtensionContextType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExtensionContextType.elementOnly.withElement(element);
    }
    return ExtensionContextType._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
