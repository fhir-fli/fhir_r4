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

  /// Display: history-instance
  /// Definition: Retrieve the change history for a particular resource.
  @JsonValue('history-instance')
  history_instance,

  /// Display: history-type
  /// Definition: Retrieve the change history for all resources of a particular type.
  @JsonValue('history-type')
  history_type,

  /// Display: history-system
  /// Definition: Retrieve the change history for all resources on a system.
  @JsonValue('history-system')
  history_system,

  /// Display: create
  /// Definition: Create a new resource with a server assigned id.
  @JsonValue('create')
  create,

  /// Display: search
  /// Definition: Search a resource type or all resources based on some filter criteria.
  @JsonValue('search')
  search,

  /// Display: search-type
  /// Definition: Search all resources of the specified type based on some filter criteria.
  @JsonValue('search-type')
  search_type,

  /// Display: search-system
  /// Definition: Search all resources based on some filter criteria.
  @JsonValue('search-system')
  search_system,

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
      case history_instance:
        return 'history-instance';
      case history_type:
        return 'history-type';
      case history_system:
        return 'history-system';
      case create:
        return 'create';
      case search:
        return 'search';
      case search_type:
        return 'search-type';
      case search_system:
        return 'search-system';
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
      case 'history-instance':
        return InteractionTrigger.history_instance;
      case 'history-type':
        return InteractionTrigger.history_type;
      case 'history-system':
        return InteractionTrigger.history_system;
      case 'create':
        return InteractionTrigger.create;
      case 'search':
        return InteractionTrigger.search;
      case 'search-type':
        return InteractionTrigger.search_type;
      case 'search-system':
        return InteractionTrigger.search_system;
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
