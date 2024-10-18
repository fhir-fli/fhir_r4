// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const PublishedInType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [PublishedInType] instances.
  static PublishedInType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PublishedInType.elementOnly.withElement(
        element,
      );
    }
    return PublishedInType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  PublishedInType withElement(Element? newElement) {
    return PublishedInType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
