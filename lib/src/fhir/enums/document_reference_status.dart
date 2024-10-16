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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const DocumentReferenceStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static DocumentReferenceStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentReferenceStatus.elementOnly.withElement(element);
    }
    return DocumentReferenceStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  DocumentReferenceStatus withElement(Element? newElement) {
    return DocumentReferenceStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
