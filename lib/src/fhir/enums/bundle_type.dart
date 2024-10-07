import 'package:json_annotation/json_annotation.dart';

/// Indicates the purpose of a bundle - how it is intended to be used.
enum BundleType {
  /// Display: Document
  /// Definition: The bundle is a document. The first resource is a Composition.
  @JsonValue('document')
  document,
  /// Display: Message
  /// Definition: The bundle is a message. The first resource is a MessageHeader.
  @JsonValue('message')
  message,
  /// Display: Transaction
  /// Definition: The bundle is a transaction - intended to be processed by a server as an atomic commit.
  @JsonValue('transaction')
  transaction,
  /// Display: Transaction Response
  /// Definition: The bundle is a transaction response. Because the response is a transaction response, the transaction has succeeded, and all responses are error free.
  @JsonValue('transaction-response')
  transaction_response,
  /// Display: Batch
  /// Definition: The bundle is a set of actions - intended to be processed by a server as a group of independent actions.
  @JsonValue('batch')
  batch,
  /// Display: Batch Response
  /// Definition: The bundle is a batch response. Note that as a batch, some responses may indicate failure and others success.
  @JsonValue('batch-response')
  batch_response,
  /// Display: History List
  /// Definition: The bundle is a list of resources from a history interaction on a server.
  @JsonValue('history')
  history,
  /// Display: Search Results
  /// Definition: The bundle is a list of resources returned as a result of a search/query interaction, operation, or message.
  @JsonValue('searchset')
  searchset,
  /// Display: Collection
  /// Definition: The bundle is a set of resources collected into a single package for ease of distribution that imposes no processing obligations or behavioral rules beyond persistence.
  @JsonValue('collection')
  collection,
;

@override
  String toString() {
      switch(this) {
        case document: return 'document';
        case message: return 'message';
        case transaction: return 'transaction';
        case transaction_response: return 'transaction-response';
        case batch: return 'batch';
        case batch_response: return 'batch-response';
        case history: return 'history';
        case searchset: return 'searchset';
        case collection: return 'collection';
      }
      }
String toJson() => toString();
  BundleType fromString(String str) {
    switch(str) {
      case 'document': return BundleType.document;
      case 'message': return BundleType.message;
      case 'transaction': return BundleType.transaction;
      case 'transaction-response': return BundleType.transaction_response;
      case 'batch': return BundleType.batch;
      case 'batch-response': return BundleType.batch_response;
      case 'history': return BundleType.history;
      case 'searchset': return BundleType.searchset;
      case 'collection': return BundleType.collection;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 BundleType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

