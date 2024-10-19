// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set defines a set of codes that are used to indicate the supported operations of a testing engine or tool.
@collection
class TestScriptOperationCode {
  /// Constructor for internal use (like enum)
  TestScriptOperationCode({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TestScriptOperationCode values
  /// read
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode read = TestScriptOperationCode(
    fhirCode: 'read',
  );

  /// vread
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode vread = TestScriptOperationCode(
    fhirCode: 'vread',
  );

  /// update
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode update = TestScriptOperationCode(
    fhirCode: 'update',
  );

  /// updateCreate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode updateCreate = TestScriptOperationCode(
    fhirCode: 'updateCreate',
  );

  /// patch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode patch = TestScriptOperationCode(
    fhirCode: 'patch',
  );

  /// delete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode delete = TestScriptOperationCode(
    fhirCode: 'delete',
  );

  /// deleteCondSingle
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode deleteCondSingle =
      TestScriptOperationCode(
    fhirCode: 'deleteCondSingle',
  );

  /// deleteCondMultiple
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode deleteCondMultiple =
      TestScriptOperationCode(
    fhirCode: 'deleteCondMultiple',
  );

  /// history
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode history = TestScriptOperationCode(
    fhirCode: 'history',
  );

  /// create
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode create = TestScriptOperationCode(
    fhirCode: 'create',
  );

  /// search
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode search = TestScriptOperationCode(
    fhirCode: 'search',
  );

  /// batch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode batch = TestScriptOperationCode(
    fhirCode: 'batch',
  );

  /// transaction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode transaction = TestScriptOperationCode(
    fhirCode: 'transaction',
  );

  /// capabilities
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode capabilities = TestScriptOperationCode(
    fhirCode: 'capabilities',
  );

  /// apply
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode apply = TestScriptOperationCode(
    fhirCode: 'apply',
  );

  /// closure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode closure = TestScriptOperationCode(
    fhirCode: 'closure',
  );

  /// find_matches
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode find_matches = TestScriptOperationCode(
    fhirCode: 'find-matches',
  );

  /// conforms
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode conforms = TestScriptOperationCode(
    fhirCode: 'conforms',
  );

  /// data_requirements
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode data_requirements =
      TestScriptOperationCode(
    fhirCode: 'data-requirements',
  );

  /// document
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode document = TestScriptOperationCode(
    fhirCode: 'document',
  );

  /// evaluate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode evaluate = TestScriptOperationCode(
    fhirCode: 'evaluate',
  );

  /// evaluate_measure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode evaluate_measure =
      TestScriptOperationCode(
    fhirCode: 'evaluate-measure',
  );

  /// everything
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode everything = TestScriptOperationCode(
    fhirCode: 'everything',
  );

  /// expand
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode expand = TestScriptOperationCode(
    fhirCode: 'expand',
  );

  /// find
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode find = TestScriptOperationCode(
    fhirCode: 'find',
  );

  /// graphql
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode graphql = TestScriptOperationCode(
    fhirCode: 'graphql',
  );

  /// implements_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode implements_ = TestScriptOperationCode(
    fhirCode: 'implements',
  );

  /// lastn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode lastn = TestScriptOperationCode(
    fhirCode: 'lastn',
  );

  /// lookup
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode lookup = TestScriptOperationCode(
    fhirCode: 'lookup',
  );

  /// match
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode match = TestScriptOperationCode(
    fhirCode: 'match',
  );

  /// meta
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode meta = TestScriptOperationCode(
    fhirCode: 'meta',
  );

  /// meta_add
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode meta_add = TestScriptOperationCode(
    fhirCode: 'meta-add',
  );

  /// meta_delete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode meta_delete = TestScriptOperationCode(
    fhirCode: 'meta-delete',
  );

  /// populate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode populate = TestScriptOperationCode(
    fhirCode: 'populate',
  );

  /// populatehtml
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode populatehtml = TestScriptOperationCode(
    fhirCode: 'populatehtml',
  );

  /// populatelink
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode populatelink = TestScriptOperationCode(
    fhirCode: 'populatelink',
  );

  /// process_message
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode process_message =
      TestScriptOperationCode(
    fhirCode: 'process-message',
  );

  /// questionnaire
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode questionnaire = TestScriptOperationCode(
    fhirCode: 'questionnaire',
  );

  /// stats
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode stats = TestScriptOperationCode(
    fhirCode: 'stats',
  );

  /// subset
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode subset = TestScriptOperationCode(
    fhirCode: 'subset',
  );

  /// subsumes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode subsumes = TestScriptOperationCode(
    fhirCode: 'subsumes',
  );

  /// transform
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode transform = TestScriptOperationCode(
    fhirCode: 'transform',
  );

  /// translate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode translate = TestScriptOperationCode(
    fhirCode: 'translate',
  );

  /// validate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode validate = TestScriptOperationCode(
    fhirCode: 'validate',
  );

  /// validate_code
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptOperationCode validate_code = TestScriptOperationCode(
    fhirCode: 'validate-code',
  );

  /// For instances where an Element is present but not value

  static final TestScriptOperationCode elementOnly = TestScriptOperationCode();

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
    return TestScriptOperationCode(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TestScriptOperationCode.$fhirCode';
}
