import 'package:fhir_r4/fhir_r4.dart';

/// The type of publication such as book, database, or journal.
enum PublishedInType {
  /// Display: Periodical
  /// Definition: Publication intended to be issued on an ongoing basis, generally more frequently than annually, containing separate articles, stories, or writings.
  D020492('D020492'),

  /// Display: Database
  /// Definition: A structured file of information or a set of logically related data stored and retrieved using computer-based means.
  D019991('D019991'),

  /// Display: Book
  /// Definition: Non-periodical written or printed works consisting of sheets of pages fastened or bound together within covers.
  D001877('D001877'),

  /// Display: Dataset
  /// Definition: Works consisting of organized collections of data, which have been stored permanently in a formalized manner suitable for communication, interpretation, or processing.
  D064886('D064886'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const PublishedInType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static PublishedInType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PublishedInType.elementOnly.withElement(element);
    }
    return PublishedInType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  PublishedInType withElement(Element? newElement) {
    return PublishedInType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
