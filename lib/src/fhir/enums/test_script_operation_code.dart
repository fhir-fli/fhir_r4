import 'package:json_annotation/json_annotation.dart';

/// This value set defines a set of codes that are used to indicate the supported operations of a testing engine or tool.
enum TestScriptOperationCode {
  /// Display: Read
  /// Definition: Read the current state of the resource.
  @JsonValue('read')
  read,
  /// Display: Version Read
  /// Definition: Read the state of a specific version of the resource.
  @JsonValue('vread')
  vread,
  /// Display: Update
  /// Definition: Update an existing resource by its id.
  @JsonValue('update')
  update,
  /// Display: Create using Update
  /// Definition: Update an existing resource by its id (or create it if it is new).
  @JsonValue('updateCreate')
  updateCreate,
  /// Display: Patch
  /// Definition: Patch an existing resource by its id.
  @JsonValue('patch')
  patch,
  /// Display: Delete
  /// Definition: Delete a resource.
  @JsonValue('delete')
  delete,
  /// Display: Conditional Delete Single
  /// Definition: Conditionally delete a single resource based on search parameters.
  @JsonValue('deleteCondSingle')
  deleteCondSingle,
  /// Display: Conditional Delete Multiple
  /// Definition: Conditionally delete one or more resources based on search parameters.
  @JsonValue('deleteCondMultiple')
  deleteCondMultiple,
  /// Display: History
  /// Definition: Retrieve the change history for a particular resource or resource type.
  @JsonValue('history')
  history,
  /// Display: Create
  /// Definition: Create a new resource with a server assigned id.
  @JsonValue('create')
  create,
  /// Display: Search
  /// Definition: Search based on some filter criteria.
  @JsonValue('search')
  search,
  /// Display: Batch
  /// Definition: Update, create or delete a set of resources as independent actions.
  @JsonValue('batch')
  batch,
  /// Display: Transaction
  /// Definition: Update, create or delete a set of resources as a single transaction.
  @JsonValue('transaction')
  transaction,
  /// Display: Capabilities
  /// Definition: Get a capability statement for the system.
  @JsonValue('capabilities')
  capabilities,
  /// Display: $apply
  /// Definition: Realizes an ActivityDefinition in a specific context
  @JsonValue('apply')
  apply,
  /// Display: $closure
  /// Definition: Closure Table Maintenance
  @JsonValue('closure')
  closure,
  /// Display: $find-matches
  /// Definition: Finding Codes based on supplied properties
  @JsonValue('find-matches')
  find_matches,
  /// Display: $conforms
  /// Definition: Compare two systems CapabilityStatements
  @JsonValue('conforms')
  conforms,
  /// Display: $data-requirements
  /// Definition: Aggregates and returns the parameters and data requirements for a resource and all its dependencies as a single module definition
  @JsonValue('data-requirements')
  data_requirements,
  /// Display: $document
  /// Definition: Generate a Document
  @JsonValue('document')
  document,
  /// Display: $evaluate
  /// Definition: Request clinical decision support guidance based on a specific decision support module
  @JsonValue('evaluate')
  evaluate,
  /// Display: $evaluate-measure
  /// Definition: Invoke an eMeasure and obtain the results
  @JsonValue('evaluate-measure')
  evaluate_measure,
  /// Display: $everything
  /// Definition: Return all the related information as described in the Encounter or Patient
  @JsonValue('everything')
  everything,
  /// Display: $expand
  /// Definition: Value Set Expansion
  @JsonValue('expand')
  expand,
  /// Display: $find
  /// Definition: Find a functional list
  @JsonValue('find')
  find,
  /// Display: $graphql
  /// Definition: Invoke a GraphQL query
  @JsonValue('graphql')
  graphql,
  /// Display: $implements
  /// Definition: Test if a server implements a client's required operations
  @JsonValue('implements')
  implements_,
  /// Display: $lastn
  /// Definition: Last N Observations Query
  @JsonValue('lastn')
  lastn,
  /// Display: $lookup
  /// Definition: Concept Look Up and Decomposition
  @JsonValue('lookup')
  lookup,
  /// Display: $match
  /// Definition: Find patient matches using MPI based logic
  @JsonValue('match')
  match,
  /// Display: $meta
  /// Definition: Access a list of profiles, tags, and security labels
  @JsonValue('meta')
  meta,
  /// Display: $meta-add
  /// Definition: Add profiles, tags, and security labels to a resource
  @JsonValue('meta-add')
  meta_add,
  /// Display: $meta-delete
  /// Definition: Delete profiles, tags, and security labels for a resource
  @JsonValue('meta-delete')
  meta_delete,
  /// Display: $populate
  /// Definition: Populate Questionnaire
  @JsonValue('populate')
  populate,
  /// Display: $populatehtml
  /// Definition: Generate HTML for Questionnaire
  @JsonValue('populatehtml')
  populatehtml,
  /// Display: $populatelink
  /// Definition: Generate a link to a Questionnaire completion webpage
  @JsonValue('populatelink')
  populatelink,
  /// Display: $process-message
  /// Definition: Process a message according to the defined event
  @JsonValue('process-message')
  process_message,
  /// Display: $questionnaire
  /// Definition: Build Questionnaire
  @JsonValue('questionnaire')
  questionnaire,
  /// Display: $stats
  /// Definition: Observation Statistics
  @JsonValue('stats')
  stats,
  /// Display: $subset
  /// Definition: Fetch a subset of the CapabilityStatement resource
  @JsonValue('subset')
  subset,
  /// Display: $subsumes
  /// Definition: CodeSystem Subsumption Testing
  @JsonValue('subsumes')
  subsumes,
  /// Display: $transform
  /// Definition: Model Instance Transformation
  @JsonValue('transform')
  transform,
  /// Display: $translate
  /// Definition: Concept Translation
  @JsonValue('translate')
  translate,
  /// Display: $validate
  /// Definition: Validate a resource
  @JsonValue('validate')
  validate,
  /// Display: $validate-code
  /// Definition: ValueSet based Validation
  @JsonValue('validate-code')
  validate_code,
;

@override
  String toString() {
      switch(this) {
        case read: return 'read';
        case vread: return 'vread';
        case update: return 'update';
        case updateCreate: return 'updateCreate';
        case patch: return 'patch';
        case delete: return 'delete';
        case deleteCondSingle: return 'deleteCondSingle';
        case deleteCondMultiple: return 'deleteCondMultiple';
        case history: return 'history';
        case create: return 'create';
        case search: return 'search';
        case batch: return 'batch';
        case transaction: return 'transaction';
        case capabilities: return 'capabilities';
        case apply: return 'apply';
        case closure: return 'closure';
        case find_matches: return 'find-matches';
        case conforms: return 'conforms';
        case data_requirements: return 'data-requirements';
        case document: return 'document';
        case evaluate: return 'evaluate';
        case evaluate_measure: return 'evaluate-measure';
        case everything: return 'everything';
        case expand: return 'expand';
        case find: return 'find';
        case graphql: return 'graphql';
        case implements_: return 'implements';
        case lastn: return 'lastn';
        case lookup: return 'lookup';
        case match: return 'match';
        case meta: return 'meta';
        case meta_add: return 'meta-add';
        case meta_delete: return 'meta-delete';
        case populate: return 'populate';
        case populatehtml: return 'populatehtml';
        case populatelink: return 'populatelink';
        case process_message: return 'process-message';
        case questionnaire: return 'questionnaire';
        case stats: return 'stats';
        case subset: return 'subset';
        case subsumes: return 'subsumes';
        case transform: return 'transform';
        case translate: return 'translate';
        case validate: return 'validate';
        case validate_code: return 'validate-code';
      }
      }
String toJson() => toString();
  TestScriptOperationCode fromString(String str) {
    switch(str) {
      case 'read': return TestScriptOperationCode.read;
      case 'vread': return TestScriptOperationCode.vread;
      case 'update': return TestScriptOperationCode.update;
      case 'updateCreate': return TestScriptOperationCode.updateCreate;
      case 'patch': return TestScriptOperationCode.patch;
      case 'delete': return TestScriptOperationCode.delete;
      case 'deleteCondSingle': return TestScriptOperationCode.deleteCondSingle;
      case 'deleteCondMultiple': return TestScriptOperationCode.deleteCondMultiple;
      case 'history': return TestScriptOperationCode.history;
      case 'create': return TestScriptOperationCode.create;
      case 'search': return TestScriptOperationCode.search;
      case 'batch': return TestScriptOperationCode.batch;
      case 'transaction': return TestScriptOperationCode.transaction;
      case 'capabilities': return TestScriptOperationCode.capabilities;
      case 'apply': return TestScriptOperationCode.apply;
      case 'closure': return TestScriptOperationCode.closure;
      case 'find-matches': return TestScriptOperationCode.find_matches;
      case 'conforms': return TestScriptOperationCode.conforms;
      case 'data-requirements': return TestScriptOperationCode.data_requirements;
      case 'document': return TestScriptOperationCode.document;
      case 'evaluate': return TestScriptOperationCode.evaluate;
      case 'evaluate-measure': return TestScriptOperationCode.evaluate_measure;
      case 'everything': return TestScriptOperationCode.everything;
      case 'expand': return TestScriptOperationCode.expand;
      case 'find': return TestScriptOperationCode.find;
      case 'graphql': return TestScriptOperationCode.graphql;
      case 'implements': return TestScriptOperationCode.implements_;
      case 'lastn': return TestScriptOperationCode.lastn;
      case 'lookup': return TestScriptOperationCode.lookup;
      case 'match': return TestScriptOperationCode.match;
      case 'meta': return TestScriptOperationCode.meta;
      case 'meta-add': return TestScriptOperationCode.meta_add;
      case 'meta-delete': return TestScriptOperationCode.meta_delete;
      case 'populate': return TestScriptOperationCode.populate;
      case 'populatehtml': return TestScriptOperationCode.populatehtml;
      case 'populatelink': return TestScriptOperationCode.populatelink;
      case 'process-message': return TestScriptOperationCode.process_message;
      case 'questionnaire': return TestScriptOperationCode.questionnaire;
      case 'stats': return TestScriptOperationCode.stats;
      case 'subset': return TestScriptOperationCode.subset;
      case 'subsumes': return TestScriptOperationCode.subsumes;
      case 'transform': return TestScriptOperationCode.transform;
      case 'translate': return TestScriptOperationCode.translate;
      case 'validate': return TestScriptOperationCode.validate;
      case 'validate-code': return TestScriptOperationCode.validate_code;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 TestScriptOperationCode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
