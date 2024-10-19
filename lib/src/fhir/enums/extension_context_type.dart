// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// How an extension context is interpreted.
@collection
class ExtensionContextType {
  /// Constructor for internal use (like enum)
  ExtensionContextType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ExtensionContextType values
  /// fhirpath
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExtensionContextType fhirpath = ExtensionContextType(
    fhirCode: 'fhirpath',
  );

  /// element_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExtensionContextType element_ = ExtensionContextType(
    fhirCode: 'element',
  );

  /// extension_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExtensionContextType extension_ = ExtensionContextType(
    fhirCode: 'extension',
  );

  /// For instances where an Element is present but not value

  static final ExtensionContextType elementOnly = ExtensionContextType();

  /// List of all enum-like values
  static final List<ExtensionContextType> values = [
    fhirpath,
    element_,
    extension_,
  ];

  /// Returns the enum value with an element attached
  ExtensionContextType withElement(Element? newElement) {
    return ExtensionContextType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return ExtensionContextType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExtensionContextType.$fhirCode';
}
