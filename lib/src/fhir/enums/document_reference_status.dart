// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the document reference.
enum DocumentReferenceStatus {
  /// Display: Current
  /// Definition: This is the current reference for this document.
  current('current'),

  /// Display: Superseded
  /// Definition: This reference has been superseded by another reference.
  superseded('superseded'),

  /// Display: Entered in Error
  /// Definition: This reference was created in error.
  entered_in_error('entered-in-error'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const DocumentReferenceStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [DocumentReferenceStatus] instances.
  static DocumentReferenceStatus fromJson(
    Map<String, dynamic> json,
  ) {
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

  /// Returns the enum value with an element
  DocumentReferenceStatus withElement(Element? newElement) {
    return DocumentReferenceStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
