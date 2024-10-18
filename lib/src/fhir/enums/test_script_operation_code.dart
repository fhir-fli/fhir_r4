// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that are used to indicate the supported operations of a testing engine or tool.
enum TestScriptOperationCode {
  /// Display: Read
  /// Definition: Read the current state of the resource.
  read('read'),

  /// Display: Version Read
  /// Definition: Read the state of a specific version of the resource.
  vread('vread'),

  /// Display: Update
  /// Definition: Update an existing resource by its id.
  update('update'),

  /// Display: Create using Update
  /// Definition: Update an existing resource by its id (or create it if it is new).
  updateCreate('updateCreate'),

  /// Display: Patch
  /// Definition: Patch an existing resource by its id.
  patch('patch'),

  /// Display: Delete
  /// Definition: Delete a resource.
  delete('delete'),

  /// Display: Conditional Delete Single
  /// Definition: Conditionally delete a single resource based on search parameters.
  deleteCondSingle('deleteCondSingle'),

  /// Display: Conditional Delete Multiple
  /// Definition: Conditionally delete one or more resources based on search parameters.
  deleteCondMultiple('deleteCondMultiple'),

  /// Display: History
  /// Definition: Retrieve the change history for a particular resource or resource type.
  history('history'),

  /// Display: Create
  /// Definition: Create a new resource with a server assigned id.
  create('create'),

  /// Display: Search
  /// Definition: Search based on some filter criteria.
  search('search'),

  /// Display: Batch
  /// Definition: Update, create or delete a set of resources as independent actions.
  batch('batch'),

  /// Display: Transaction
  /// Definition: Update, create or delete a set of resources as a single transaction.
  transaction('transaction'),

  /// Display: Capabilities
  /// Definition: Get a capability statement for the system.
  capabilities('capabilities'),

  /// Display: $apply
  /// Definition: Realizes an ActivityDefinition in a specific context
  apply('apply'),

  /// Display: $closure
  /// Definition: Closure Table Maintenance
  closure('closure'),

  /// Display: $find-matches
  /// Definition: Finding Codes based on supplied properties
  find_matches('find-matches'),

  /// Display: $conforms
  /// Definition: Compare two systems CapabilityStatements
  conforms('conforms'),

  /// Display: $data-requirements
  /// Definition: Aggregates and returns the parameters and data requirements for a resource and all its dependencies as a single module definition
  data_requirements('data-requirements'),

  /// Display: $document
  /// Definition: Generate a Document
  document('document'),

  /// Display: $evaluate
  /// Definition: Request clinical decision support guidance based on a specific decision support module
  evaluate('evaluate'),

  /// Display: $evaluate-measure
  /// Definition: Invoke an eMeasure and obtain the results
  evaluate_measure('evaluate-measure'),

  /// Display: $everything
  /// Definition: Return all the related information as described in the Encounter or Patient
  everything('everything'),

  /// Display: $expand
  /// Definition: Value Set Expansion
  expand('expand'),

  /// Display: $find
  /// Definition: Find a functional list
  find('find'),

  /// Display: $graphql
  /// Definition: Invoke a GraphQL query
  graphql('graphql'),

  /// Display: $implements
  /// Definition: Test if a server implements a client's required operations
  implements_('implements'),

  /// Display: $lastn
  /// Definition: Last N Observations Query
  lastn('lastn'),

  /// Display: $lookup
  /// Definition: Concept Look Up and Decomposition
  lookup('lookup'),

  /// Display: $match
  /// Definition: Find patient matches using MPI based logic
  match('match'),

  /// Display: $meta
  /// Definition: Access a list of profiles, tags, and security labels
  meta('meta'),

  /// Display: $meta-add
  /// Definition: Add profiles, tags, and security labels to a resource
  meta_add('meta-add'),

  /// Display: $meta-delete
  /// Definition: Delete profiles, tags, and security labels for a resource
  meta_delete('meta-delete'),

  /// Display: $populate
  /// Definition: Populate Questionnaire
  populate('populate'),

  /// Display: $populatehtml
  /// Definition: Generate HTML for Questionnaire
  populatehtml('populatehtml'),

  /// Display: $populatelink
  /// Definition: Generate a link to a Questionnaire completion webpage
  populatelink('populatelink'),

  /// Display: $process-message
  /// Definition: Process a message according to the defined event
  process_message('process-message'),

  /// Display: $questionnaire
  /// Definition: Build Questionnaire
  questionnaire('questionnaire'),

  /// Display: $stats
  /// Definition: Observation Statistics
  stats('stats'),

  /// Display: $subset
  /// Definition: Fetch a subset of the CapabilityStatement resource
  subset('subset'),

  /// Display: $subsumes
  /// Definition: CodeSystem Subsumption Testing
  subsumes('subsumes'),

  /// Display: $transform
  /// Definition: Model Instance Transformation
  transform('transform'),

  /// Display: $translate
  /// Definition: Concept Translation
  translate('translate'),

  /// Display: $validate
  /// Definition: Validate a resource
  validate('validate'),

  /// Display: $validate-code
  /// Definition: ValueSet based Validation
  validate_code('validate-code'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const TestScriptOperationCode(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [TestScriptOperationCode] instances.
  static TestScriptOperationCode fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestScriptOperationCode.elementOnly.withElement(
        element,
      );
    }
    return TestScriptOperationCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  TestScriptOperationCode withElement(Element? newElement) {
    return TestScriptOperationCode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
