// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The extent of the content of the code system (the concepts and codes it defines) are represented in a code system resource.
@collection
class CodeSystemContentMode {
  /// Constructor for internal use (like enum)
  CodeSystemContentMode({this.fhirCode, this.element})
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

  /// CodeSystemContentMode values
  /// not_present
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CodeSystemContentMode not_present = CodeSystemContentMode(
    fhirCode: 'not-present',
  );

  /// example
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CodeSystemContentMode example = CodeSystemContentMode(
    fhirCode: 'example',
  );

  /// fragment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CodeSystemContentMode fragment = CodeSystemContentMode(
    fhirCode: 'fragment',
  );

  /// complete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CodeSystemContentMode complete = CodeSystemContentMode(
    fhirCode: 'complete',
  );

  /// supplement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CodeSystemContentMode supplement = CodeSystemContentMode(
    fhirCode: 'supplement',
  );

  /// For instances where an Element is present but not value

  static final CodeSystemContentMode elementOnly = CodeSystemContentMode();

  /// List of all enum-like values
  static final List<CodeSystemContentMode> values = [
    not_present,
    example,
    fragment,
    complete,
    supplement,
  ];

  /// Returns the enum value with an element attached
  CodeSystemContentMode withElement(Element? newElement) {
    return CodeSystemContentMode(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CodeSystemContentMode] from JSON.
  static CodeSystemContentMode fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSystemContentMode.elementOnly.withElement(element);
    }
    return CodeSystemContentMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CodeSystemContentMode.$fhirCode';
}
