/// This value set defines a set of codes that are used to indicate the supported operations of a testing engine or tool.
enum TestScriptOperationCode {
  /// Display: Read
  /// Definition: Read the current state of the resource.
  read,

  /// Display: Version Read
  /// Definition: Read the state of a specific version of the resource.
  vread,

  /// Display: Update
  /// Definition: Update an existing resource by its id.
  update,

  /// Display: Create using Update
  /// Definition: Update an existing resource by its id (or create it if it is new).
  updateCreate,

  /// Display: Patch
  /// Definition: Patch an existing resource by its id.
  patch,

  /// Display: Delete
  /// Definition: Delete a resource.
  delete,

  /// Display: Conditional Delete Single
  /// Definition: Conditionally delete a single resource based on search parameters.
  deleteCondSingle,

  /// Display: Conditional Delete Multiple
  /// Definition: Conditionally delete one or more resources based on search parameters.
  deleteCondMultiple,

  /// Display: History
  /// Definition: Retrieve the change history for a particular resource or resource type.
  history,

  /// Display: Create
  /// Definition: Create a new resource with a server assigned id.
  create,

  /// Display: Search
  /// Definition: Search based on some filter criteria.
  search,

  /// Display: Batch
  /// Definition: Update, create or delete a set of resources as independent actions.
  batch,

  /// Display: Transaction
  /// Definition: Update, create or delete a set of resources as a single transaction.
  transaction,

  /// Display: Capabilities
  /// Definition: Get a capability statement for the system.
  capabilities,

  /// Display: $apply
  /// Definition: Realizes an ActivityDefinition in a specific context
  apply,

  /// Display: $closure
  /// Definition: Closure Table Maintenance
  closure,

  /// Display: $find-matches
  /// Definition: Finding Codes based on supplied properties
  find_matches,

  /// Display: $conforms
  /// Definition: Compare two systems CapabilityStatements
  conforms,

  /// Display: $data-requirements
  /// Definition: Aggregates and returns the parameters and data requirements for a resource and all its dependencies as a single module definition
  data_requirements,

  /// Display: $document
  /// Definition: Generate a Document
  document,

  /// Display: $evaluate
  /// Definition: Request clinical decision support guidance based on a specific decision support module
  evaluate,

  /// Display: $evaluate-measure
  /// Definition: Invoke an eMeasure and obtain the results
  evaluate_measure,

  /// Display: $everything
  /// Definition: Return all the related information as described in the Encounter or Patient
  everything,

  /// Display: $expand
  /// Definition: Value Set Expansion
  expand,

  /// Display: $find
  /// Definition: Find a functional list
  find,

  /// Display: $graphql
  /// Definition: Invoke a GraphQL query
  graphql,

  /// Display: $implements
  /// Definition: Test if a server implements a client's required operations
  implements_,

  /// Display: $lastn
  /// Definition: Last N Observations Query
  lastn,

  /// Display: $lookup
  /// Definition: Concept Look Up and Decomposition
  lookup,

  /// Display: $match
  /// Definition: Find patient matches using MPI based logic
  match,

  /// Display: $meta
  /// Definition: Access a list of profiles, tags, and security labels
  meta,

  /// Display: $meta-add
  /// Definition: Add profiles, tags, and security labels to a resource
  meta_add,

  /// Display: $meta-delete
  /// Definition: Delete profiles, tags, and security labels for a resource
  meta_delete,

  /// Display: $populate
  /// Definition: Populate Questionnaire
  populate,

  /// Display: $populatehtml
  /// Definition: Generate HTML for Questionnaire
  populatehtml,

  /// Display: $populatelink
  /// Definition: Generate a link to a Questionnaire completion webpage
  populatelink,

  /// Display: $process-message
  /// Definition: Process a message according to the defined event
  process_message,

  /// Display: $questionnaire
  /// Definition: Build Questionnaire
  questionnaire,

  /// Display: $stats
  /// Definition: Observation Statistics
  stats,

  /// Display: $subset
  /// Definition: Fetch a subset of the CapabilityStatement resource
  subset,

  /// Display: $subsumes
  /// Definition: CodeSystem Subsumption Testing
  subsumes,

  /// Display: $transform
  /// Definition: Model Instance Transformation
  transform,

  /// Display: $translate
  /// Definition: Concept Translation
  translate,

  /// Display: $validate
  /// Definition: Validate a resource
  validate,

  /// Display: $validate-code
  /// Definition: ValueSet based Validation
  validate_code,
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
      case updateCreate:
        return 'updateCreate';
      case patch:
        return 'patch';
      case delete:
        return 'delete';
      case deleteCondSingle:
        return 'deleteCondSingle';
      case deleteCondMultiple:
        return 'deleteCondMultiple';
      case history:
        return 'history';
      case create:
        return 'create';
      case search:
        return 'search';
      case batch:
        return 'batch';
      case transaction:
        return 'transaction';
      case capabilities:
        return 'capabilities';
      case apply:
        return 'apply';
      case closure:
        return 'closure';
      case find_matches:
        return 'find-matches';
      case conforms:
        return 'conforms';
      case data_requirements:
        return 'data-requirements';
      case document:
        return 'document';
      case evaluate:
        return 'evaluate';
      case evaluate_measure:
        return 'evaluate-measure';
      case everything:
        return 'everything';
      case expand:
        return 'expand';
      case find:
        return 'find';
      case graphql:
        return 'graphql';
      case implements_:
        return 'implements';
      case lastn:
        return 'lastn';
      case lookup:
        return 'lookup';
      case match:
        return 'match';
      case meta:
        return 'meta';
      case meta_add:
        return 'meta-add';
      case meta_delete:
        return 'meta-delete';
      case populate:
        return 'populate';
      case populatehtml:
        return 'populatehtml';
      case populatelink:
        return 'populatelink';
      case process_message:
        return 'process-message';
      case questionnaire:
        return 'questionnaire';
      case stats:
        return 'stats';
      case subset:
        return 'subset';
      case subsumes:
        return 'subsumes';
      case transform:
        return 'transform';
      case translate:
        return 'translate';
      case validate:
        return 'validate';
      case validate_code:
        return 'validate-code';
    }
  }

  String toJson() => toString();
  static TestScriptOperationCode fromString(String str) {
    switch (str) {
      case 'read':
        return TestScriptOperationCode.read;
      case 'vread':
        return TestScriptOperationCode.vread;
      case 'update':
        return TestScriptOperationCode.update;
      case 'updateCreate':
        return TestScriptOperationCode.updateCreate;
      case 'patch':
        return TestScriptOperationCode.patch;
      case 'delete':
        return TestScriptOperationCode.delete;
      case 'deleteCondSingle':
        return TestScriptOperationCode.deleteCondSingle;
      case 'deleteCondMultiple':
        return TestScriptOperationCode.deleteCondMultiple;
      case 'history':
        return TestScriptOperationCode.history;
      case 'create':
        return TestScriptOperationCode.create;
      case 'search':
        return TestScriptOperationCode.search;
      case 'batch':
        return TestScriptOperationCode.batch;
      case 'transaction':
        return TestScriptOperationCode.transaction;
      case 'capabilities':
        return TestScriptOperationCode.capabilities;
      case 'apply':
        return TestScriptOperationCode.apply;
      case 'closure':
        return TestScriptOperationCode.closure;
      case 'find-matches':
        return TestScriptOperationCode.find_matches;
      case 'conforms':
        return TestScriptOperationCode.conforms;
      case 'data-requirements':
        return TestScriptOperationCode.data_requirements;
      case 'document':
        return TestScriptOperationCode.document;
      case 'evaluate':
        return TestScriptOperationCode.evaluate;
      case 'evaluate-measure':
        return TestScriptOperationCode.evaluate_measure;
      case 'everything':
        return TestScriptOperationCode.everything;
      case 'expand':
        return TestScriptOperationCode.expand;
      case 'find':
        return TestScriptOperationCode.find;
      case 'graphql':
        return TestScriptOperationCode.graphql;
      case 'implements':
        return TestScriptOperationCode.implements_;
      case 'lastn':
        return TestScriptOperationCode.lastn;
      case 'lookup':
        return TestScriptOperationCode.lookup;
      case 'match':
        return TestScriptOperationCode.match;
      case 'meta':
        return TestScriptOperationCode.meta;
      case 'meta-add':
        return TestScriptOperationCode.meta_add;
      case 'meta-delete':
        return TestScriptOperationCode.meta_delete;
      case 'populate':
        return TestScriptOperationCode.populate;
      case 'populatehtml':
        return TestScriptOperationCode.populatehtml;
      case 'populatelink':
        return TestScriptOperationCode.populatelink;
      case 'process-message':
        return TestScriptOperationCode.process_message;
      case 'questionnaire':
        return TestScriptOperationCode.questionnaire;
      case 'stats':
        return TestScriptOperationCode.stats;
      case 'subset':
        return TestScriptOperationCode.subset;
      case 'subsumes':
        return TestScriptOperationCode.subsumes;
      case 'transform':
        return TestScriptOperationCode.transform;
      case 'translate':
        return TestScriptOperationCode.translate;
      case 'validate':
        return TestScriptOperationCode.validate;
      case 'validate-code':
        return TestScriptOperationCode.validate_code;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static TestScriptOperationCode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
