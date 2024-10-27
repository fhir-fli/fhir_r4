// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the document reference.
class DocumentReferenceStatus {
  // Private constructor for internal use (like enum)
  DocumentReferenceStatus._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// DocumentReferenceStatus values
  /// current
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceStatus current = DocumentReferenceStatus._(
    'current',
  );

  /// superseded
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceStatus superseded = DocumentReferenceStatus._(
    'superseded',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceStatus entered_in_error =
      DocumentReferenceStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final DocumentReferenceStatus elementOnly =
      DocumentReferenceStatus._('');

  /// List of all enum-like values
  static final List<DocumentReferenceStatus> values = [
    current,
    superseded,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  DocumentReferenceStatus withElement(Element? newElement) {
    return DocumentReferenceStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DocumentReferenceStatus] from JSON.
  static DocumentReferenceStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentReferenceStatus.elementOnly.withElement(element);
    }
    return DocumentReferenceStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
