import 'package:json_annotation/json_annotation.dart';

/// More detailed code concerning the type of the audit event - defined by DICOM with some FHIR specific additions.
enum AuditEventSubType {
  @JsonValue('110120')
  value110120,
  @JsonValue('110121')
  value110121,
  @JsonValue('110122')
  value110122,
  @JsonValue('110123')
  value110123,
  @JsonValue('110124')
  value110124,
  @JsonValue('110125')
  value110125,
  @JsonValue('110126')
  value110126,
  @JsonValue('110127')
  value110127,
  @JsonValue('110128')
  value110128,
  @JsonValue('110129')
  value110129,
  @JsonValue('110130')
  value110130,
  @JsonValue('110131')
  value110131,
  @JsonValue('110132')
  value110132,
  @JsonValue('110133')
  value110133,
  @JsonValue('110134')
  value110134,
  @JsonValue('110135')
  value110135,
  @JsonValue('110136')
  value110136,
  @JsonValue('110137')
  value110137,
  @JsonValue('110138')
  value110138,
  @JsonValue('110139')
  value110139,
  @JsonValue('110140')
  value110140,
  @JsonValue('110141')
  value110141,
  @JsonValue('110142')
  value110142,

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
      case value110120:
        return '110120';
      case value110121:
        return '110121';
      case value110122:
        return '110122';
      case value110123:
        return '110123';
      case value110124:
        return '110124';
      case value110125:
        return '110125';
      case value110126:
        return '110126';
      case value110127:
        return '110127';
      case value110128:
        return '110128';
      case value110129:
        return '110129';
      case value110130:
        return '110130';
      case value110131:
        return '110131';
      case value110132:
        return '110132';
      case value110133:
        return '110133';
      case value110134:
        return '110134';
      case value110135:
        return '110135';
      case value110136:
        return '110136';
      case value110137:
        return '110137';
      case value110138:
        return '110138';
      case value110139:
        return '110139';
      case value110140:
        return '110140';
      case value110141:
        return '110141';
      case value110142:
        return '110142';
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
  AuditEventSubType fromString(String str) {
    switch (str) {
      case '110120':
        return AuditEventSubType.value110120;
      case '110121':
        return AuditEventSubType.value110121;
      case '110122':
        return AuditEventSubType.value110122;
      case '110123':
        return AuditEventSubType.value110123;
      case '110124':
        return AuditEventSubType.value110124;
      case '110125':
        return AuditEventSubType.value110125;
      case '110126':
        return AuditEventSubType.value110126;
      case '110127':
        return AuditEventSubType.value110127;
      case '110128':
        return AuditEventSubType.value110128;
      case '110129':
        return AuditEventSubType.value110129;
      case '110130':
        return AuditEventSubType.value110130;
      case '110131':
        return AuditEventSubType.value110131;
      case '110132':
        return AuditEventSubType.value110132;
      case '110133':
        return AuditEventSubType.value110133;
      case '110134':
        return AuditEventSubType.value110134;
      case '110135':
        return AuditEventSubType.value110135;
      case '110136':
        return AuditEventSubType.value110136;
      case '110137':
        return AuditEventSubType.value110137;
      case '110138':
        return AuditEventSubType.value110138;
      case '110139':
        return AuditEventSubType.value110139;
      case '110140':
        return AuditEventSubType.value110140;
      case '110141':
        return AuditEventSubType.value110141;
      case '110142':
        return AuditEventSubType.value110142;
      case 'read':
        return AuditEventSubType.read;
      case 'vread':
        return AuditEventSubType.vread;
      case 'update':
        return AuditEventSubType.update;
      case 'patch':
        return AuditEventSubType.patch;
      case 'delete':
        return AuditEventSubType.delete;
      case 'history':
        return AuditEventSubType.history;
      case 'create':
        return AuditEventSubType.create;
      case 'search':
        return AuditEventSubType.search;
      case 'capabilities':
        return AuditEventSubType.capabilities;
      case 'transaction':
        return AuditEventSubType.transaction;
      case 'batch':
        return AuditEventSubType.batch;
      case 'operation':
        return AuditEventSubType.operation;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  AuditEventSubType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
