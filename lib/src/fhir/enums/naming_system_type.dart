// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Identifies the purpose of the naming system.
class NamingSystemType {
  // Private constructor for internal use (like enum)
  NamingSystemType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// NamingSystemType values
  /// codesystem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NamingSystemType codesystem = NamingSystemType._(
    'codesystem',
  );

  /// identifier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NamingSystemType identifier = NamingSystemType._(
    'identifier',
  );

  /// root
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NamingSystemType root = NamingSystemType._(
    'root',
  );

  /// For instances where an Element is present but not value

  static final NamingSystemType elementOnly = NamingSystemType._('');

  /// List of all enum-like values
  static final List<NamingSystemType> values = [
    codesystem,
    identifier,
    root,
  ];

  /// Returns the enum value with an element attached
  NamingSystemType withElement(Element? newElement) {
    return NamingSystemType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [NamingSystemType] from JSON.
  static NamingSystemType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NamingSystemType.elementOnly.withElement(element);
    }
    return NamingSystemType._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
