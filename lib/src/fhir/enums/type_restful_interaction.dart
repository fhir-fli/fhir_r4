/// Operations supported by REST at the type or instance level.
enum TypeRestfulInteraction {
  /// Display: read
  /// Definition: Read the current state of the resource.
  read,

  /// Display: vread
  /// Definition: Read the state of a specific version of the resource.
  vread,

  /// Display: update
  /// Definition: Update an existing resource by its id (or create it if it is new).
  update,

  /// Display: patch
  /// Definition: Update an existing resource by posting a set of changes to it.
  patch,

  /// Display: delete
  /// Definition: Delete a resource.
  delete,

  /// Display: history
  /// Definition: Retrieve the change history for a particular resource, type of resource, or the entire system.
  history,

  /// Display: history-instance
  /// Definition: Retrieve the change history for a particular resource.
  history_instance,

  /// Display: history-type
  /// Definition: Retrieve the change history for all resources of a particular type.
  history_type,

  /// Display: history-system
  /// Definition: Retrieve the change history for all resources on a system.
  history_system,

  /// Display: create
  /// Definition: Create a new resource with a server assigned id.
  create,

  /// Display: search
  /// Definition: Search a resource type or all resources based on some filter criteria.
  search,

  /// Display: search-type
  /// Definition: Search all resources of the specified type based on some filter criteria.
  search_type,

  /// Display: search-system
  /// Definition: Search all resources based on some filter criteria.
  search_system,

  /// Display: capabilities
  /// Definition: Get a Capability Statement for the system.
  capabilities,

  /// Display: transaction
  /// Definition: Update, create or delete a set of resources as a single transaction.
  transaction,

  /// Display: batch
  /// Definition: perform a set of a separate interactions in a single http operation
  batch,

  /// Display: operation
  /// Definition: Perform an operation as defined by an OperationDefinition.
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
  static TypeRestfulInteraction fromString(String str) {
    switch (str) {
      case 'read':
        return TypeRestfulInteraction.read;
      case 'vread':
        return TypeRestfulInteraction.vread;
      case 'update':
        return TypeRestfulInteraction.update;
      case 'patch':
        return TypeRestfulInteraction.patch;
      case 'delete':
        return TypeRestfulInteraction.delete;
      case 'history':
        return TypeRestfulInteraction.history;
      case 'history-instance':
        return TypeRestfulInteraction.history_instance;
      case 'history-type':
        return TypeRestfulInteraction.history_type;
      case 'history-system':
        return TypeRestfulInteraction.history_system;
      case 'create':
        return TypeRestfulInteraction.create;
      case 'search':
        return TypeRestfulInteraction.search;
      case 'search-type':
        return TypeRestfulInteraction.search_type;
      case 'search-system':
        return TypeRestfulInteraction.search_system;
      case 'capabilities':
        return TypeRestfulInteraction.capabilities;
      case 'transaction':
        return TypeRestfulInteraction.transaction;
      case 'batch':
        return TypeRestfulInteraction.batch;
      case 'operation':
        return TypeRestfulInteraction.operation;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static TypeRestfulInteraction fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
