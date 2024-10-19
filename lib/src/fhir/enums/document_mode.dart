// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Whether the application produces or consumes documents.
@collection
class DocumentMode {
  /// Constructor for internal use (like enum)
  DocumentMode({this.fhirCode, this.element})
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

  /// DocumentMode values
  /// producer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentMode producer = DocumentMode(
    fhirCode: 'producer',
  );

  /// consumer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentMode consumer = DocumentMode(
    fhirCode: 'consumer',
  );

  /// For instances where an Element is present but not value

  static final DocumentMode elementOnly = DocumentMode();

  /// List of all enum-like values
  static final List<DocumentMode> values = [
    producer,
    consumer,
  ];

  /// Returns the enum value with an element attached
  DocumentMode withElement(Element? newElement) {
    return DocumentMode(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DocumentMode] from JSON.
  static DocumentMode fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentMode.elementOnly.withElement(element);
    }
    return DocumentMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DocumentMode.$fhirCode';
}
