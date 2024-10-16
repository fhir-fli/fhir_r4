import 'package:fhir_r4/fhir_r4.dart';

/// Detailed information about the type of the image - its kind, purpose, or the kind of equipment used to generate it.
enum MediaModality {
  /// Display: Diagram
  /// Definition: A diagram. Often used in diagnostic reports
  diagram('diagram'),

  /// Display: Fax
  /// Definition: A digital record of a fax document
  fax('fax'),

  /// Display: Scanned Document
  /// Definition: A digital scan of a document. This is reserved for when there is not enough metadata to create a document reference
  scan('scan'),

  /// Display: Retina Scan
  /// Definition: A retinal image used for identification purposes
  retina('retina'),

  /// Display: Fingerprint
  /// Definition: A finger print scan used for identification purposes
  fingerprint('fingerprint'),

  /// Display: Iris Scan
  /// Definition: An iris scan used for identification purposes
  iris('iris'),

  /// Display: Palm Scan
  /// Definition: A palm scan used for identification purposes
  palm('palm'),

  /// Display: Face Scan
  /// Definition: A face scan used for identification purposes
  face('face'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MediaModality(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MediaModality fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MediaModality.elementOnly.withElement(element);
    }
    return MediaModality.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MediaModality withElement(Element? newElement) {
    return MediaModality.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
