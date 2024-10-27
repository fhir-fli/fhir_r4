// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that are used to indicate the supported operations of a testing engine or tool.
class TestScriptOperationCode {
  // Private constructor for internal use (like enum)
  TestScriptOperationCode._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TestScriptOperationCode values
  /// read
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode read = TestScriptOperationCode._(
    'read',
  );

  /// vread
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode vread = TestScriptOperationCode._(
    'vread',
  );

  /// update
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode update = TestScriptOperationCode._(
    'update',
  );

  /// updateCreate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode updateCreate = TestScriptOperationCode._(
    'updateCreate',
  );

  /// patch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode patch = TestScriptOperationCode._(
    'patch',
  );

  /// delete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode delete = TestScriptOperationCode._(
    'delete',
  );

  /// deleteCondSingle
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode deleteCondSingle =
      TestScriptOperationCode._(
    'deleteCondSingle',
  );

  /// deleteCondMultiple
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode deleteCondMultiple =
      TestScriptOperationCode._(
    'deleteCondMultiple',
  );

  /// history
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode history = TestScriptOperationCode._(
    'history',
  );

  /// create
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode create = TestScriptOperationCode._(
    'create',
  );

  /// search
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode search = TestScriptOperationCode._(
    'search',
  );

  /// batch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode batch = TestScriptOperationCode._(
    'batch',
  );

  /// transaction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode transaction = TestScriptOperationCode._(
    'transaction',
  );

  /// capabilities
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode capabilities = TestScriptOperationCode._(
    'capabilities',
  );

  /// apply
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode apply = TestScriptOperationCode._(
    'apply',
  );

  /// closure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode closure = TestScriptOperationCode._(
    'closure',
  );

  /// find_matches
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode find_matches = TestScriptOperationCode._(
    'find-matches',
  );

  /// conforms
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode conforms = TestScriptOperationCode._(
    'conforms',
  );

  /// data_requirements
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode data_requirements =
      TestScriptOperationCode._(
    'data-requirements',
  );

  /// document
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode document = TestScriptOperationCode._(
    'document',
  );

  /// evaluate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode evaluate = TestScriptOperationCode._(
    'evaluate',
  );

  /// evaluate_measure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode evaluate_measure =
      TestScriptOperationCode._(
    'evaluate-measure',
  );

  /// everything
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode everything = TestScriptOperationCode._(
    'everything',
  );

  /// expand
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode expand = TestScriptOperationCode._(
    'expand',
  );

  /// find
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode find = TestScriptOperationCode._(
    'find',
  );

  /// graphql
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode graphql = TestScriptOperationCode._(
    'graphql',
  );

  /// implements_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode implements_ = TestScriptOperationCode._(
    'implements',
  );

  /// lastn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode lastn = TestScriptOperationCode._(
    'lastn',
  );

  /// lookup
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode lookup = TestScriptOperationCode._(
    'lookup',
  );

  /// match
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode match = TestScriptOperationCode._(
    'match',
  );

  /// meta
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode meta = TestScriptOperationCode._(
    'meta',
  );

  /// meta_add
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode meta_add = TestScriptOperationCode._(
    'meta-add',
  );

  /// meta_delete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode meta_delete = TestScriptOperationCode._(
    'meta-delete',
  );

  /// populate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode populate = TestScriptOperationCode._(
    'populate',
  );

  /// populatehtml
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode populatehtml = TestScriptOperationCode._(
    'populatehtml',
  );

  /// populatelink
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode populatelink = TestScriptOperationCode._(
    'populatelink',
  );

  /// process_message
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode process_message =
      TestScriptOperationCode._(
    'process-message',
  );

  /// questionnaire
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode questionnaire =
      TestScriptOperationCode._(
    'questionnaire',
  );

  /// stats
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode stats = TestScriptOperationCode._(
    'stats',
  );

  /// subset
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode subset = TestScriptOperationCode._(
    'subset',
  );

  /// subsumes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode subsumes = TestScriptOperationCode._(
    'subsumes',
  );

  /// transform
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode transform = TestScriptOperationCode._(
    'transform',
  );

  /// translate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode translate = TestScriptOperationCode._(
    'translate',
  );

  /// validate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode validate = TestScriptOperationCode._(
    'validate',
  );

  /// validate_code
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode validate_code =
      TestScriptOperationCode._(
    'validate-code',
  );

  /// For instances where an Element is present but not value

  static final TestScriptOperationCode elementOnly =
      TestScriptOperationCode._('');

  /// List of all enum-like values
  static final List<TestScriptOperationCode> values = [
    read,
    vread,
    update,
    updateCreate,
    patch,
    delete,
    deleteCondSingle,
    deleteCondMultiple,
    history,
    create,
    search,
    batch,
    transaction,
    capabilities,
    apply,
    closure,
    find_matches,
    conforms,
    data_requirements,
    document,
    evaluate,
    evaluate_measure,
    everything,
    expand,
    find,
    graphql,
    implements_,
    lastn,
    lookup,
    match,
    meta,
    meta_add,
    meta_delete,
    populate,
    populatehtml,
    populatelink,
    process_message,
    questionnaire,
    stats,
    subset,
    subsumes,
    transform,
    translate,
    validate,
    validate_code,
  ];

  /// Returns the enum value with an element attached
  TestScriptOperationCode withElement(Element? newElement) {
    return TestScriptOperationCode._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [TestScriptOperationCode] from JSON.
  static TestScriptOperationCode fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestScriptOperationCode.elementOnly.withElement(element);
    }
    return TestScriptOperationCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
