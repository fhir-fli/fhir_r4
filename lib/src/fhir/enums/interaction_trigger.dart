import 'package:json_annotation/json_annotation.dart';

/// FHIR RESTful interaction codes used for SubscriptionTopic trigger.
enum InteractionTrigger {
  /// Display: read
  /// Definition: Read the current state of the resource.
  @JsonValue('read')
  read,

  /// Display: vread
  /// Definition: Read the state of a specific version of the resource.
  @JsonValue('vread')
  vread,

  /// Display: update
  /// Definition: Update an existing resource by its id (or create it if it is new).
  @JsonValue('update')
  update,

  /// Display: patch
  /// Definition: Update an existing resource by posting a set of changes to it.
  @JsonValue('patch')
  patch,

  /// Display: delete
  /// Definition: Delete a resource.
  @JsonValue('delete')
  delete,

  /// Display: history
  /// Definition: Retrieve the change history for a particular resource, type of resource, or the entire system.
  @JsonValue('history')
  history,

  /// Display: create
  /// Definition: Create a new resource with a server assigned id.
  @JsonValue('create')
  create,

  /// Display: search
  /// Definition: Search a resource type or all resources based on some filter criteria.
  @JsonValue('search')
  search,

  /// Display: capabilities
  /// Definition: Get a Capability Statement for the system.
  @JsonValue('capabilities')
  capabilities,

  /// Display: transaction
  /// Definition: Update, create or delete a set of resources as a single transaction.
  @JsonValue('transaction')
  transaction,

  /// Display: batch
  /// Definition: perform a set of a separate interactions in a single http operation
  @JsonValue('batch')
  batch,

  /// Display: operation
  /// Definition: Perform an operation as defined by an OperationDefinition.
  @JsonValue('operation')
  operation,
  ;

  @override
  String toString() {
    switch (this) {
      case read:
        return 'read';
      case vread:
        return 'vread';
      case update:
        return 'update';
      case patch:
        return 'patch';
      case delete:
        return 'delete';
      case history:
        return 'history';
      case create:
        return 'create';
      case search:
        return 'search';
      case capabilities:
        return 'capabilities';
      case transaction:
        return 'transaction';
      case batch:
        return 'batch';
      case operation:
        return 'operation';
    }
  }

  String toJson() => toString();
  InteractionTrigger fromString(String str) {
    switch (str) {
      case 'read':
        return InteractionTrigger.read;
      case 'vread':
        return InteractionTrigger.vread;
      case 'update':
        return InteractionTrigger.update;
      case 'patch':
        return InteractionTrigger.patch;
      case 'delete':
        return InteractionTrigger.delete;
      case 'history':
        return InteractionTrigger.history;
      case 'create':
        return InteractionTrigger.create;
      case 'search':
        return InteractionTrigger.search;
      case 'capabilities':
        return InteractionTrigger.capabilities;
      case 'transaction':
        return InteractionTrigger.transaction;
      case 'batch':
        return InteractionTrigger.batch;
      case 'operation':
        return InteractionTrigger.operation;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  InteractionTrigger fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
