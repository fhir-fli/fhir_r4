// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the purpose of a bundle - how it is intended to be used.
enum BundleType {
  /// Display: Document
  /// Definition: The bundle is a document. The first resource is a Composition.
  document('document'),

  /// Display: Message
  /// Definition: The bundle is a message. The first resource is a MessageHeader.
  message('message'),

  /// Display: Transaction
  /// Definition: The bundle is a transaction - intended to be processed by a server as an atomic commit.
  transaction('transaction'),

  /// Display: Transaction Response
  /// Definition: The bundle is a transaction response. Because the response is a transaction response, the transaction has succeeded, and all responses are error free.
  transaction_response('transaction-response'),

  /// Display: Batch
  /// Definition: The bundle is a set of actions - intended to be processed by a server as a group of independent actions.
  batch('batch'),

  /// Display: Batch Response
  /// Definition: The bundle is a batch response. Note that as a batch, some responses may indicate failure and others success.
  batch_response('batch-response'),

  /// Display: History List
  /// Definition: The bundle is a list of resources from a history interaction on a server.
  history('history'),

  /// Display: Search Results
  /// Definition: The bundle is a list of resources returned as a result of a search/query interaction, operation, or message.
  searchset('searchset'),

  /// Display: Collection
  /// Definition: The bundle is a set of resources collected into a single package for ease of distribution that imposes no processing obligations or behavioral rules beyond persistence.
  collection('collection'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const BundleType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [BundleType] instances.
  static BundleType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BundleType.elementOnly.withElement(
        element,
      );
    }
    return BundleType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  BundleType withElement(Element? newElement) {
    return BundleType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
