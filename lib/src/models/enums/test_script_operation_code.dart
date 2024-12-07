// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that are used to indicate the supported operations of a testing engine or tool.
class TestScriptOperationCode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  TestScriptOperationCode._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [TestScriptOperationCode] from JSON.
  factory TestScriptOperationCode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestScriptOperationCode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TestScriptOperationCode cannot be constructed from JSON.',
      );
    }
    return TestScriptOperationCode._(value: value, element: element);
  }

  /// read
  static final TestScriptOperationCode read = TestScriptOperationCode._(
    value: 'read',
  );

  /// vread
  static final TestScriptOperationCode vread = TestScriptOperationCode._(
    value: 'vread',
  );

  /// update
  static final TestScriptOperationCode update = TestScriptOperationCode._(
    value: 'update',
  );

  /// updateCreate
  static final TestScriptOperationCode updateCreate = TestScriptOperationCode._(
    value: 'updateCreate',
  );

  /// patch
  static final TestScriptOperationCode patch = TestScriptOperationCode._(
    value: 'patch',
  );

  /// delete
  static final TestScriptOperationCode delete = TestScriptOperationCode._(
    value: 'delete',
  );

  /// deleteCondSingle
  static final TestScriptOperationCode deleteCondSingle =
      TestScriptOperationCode._(
    value: 'deleteCondSingle',
  );

  /// deleteCondMultiple
  static final TestScriptOperationCode deleteCondMultiple =
      TestScriptOperationCode._(
    value: 'deleteCondMultiple',
  );

  /// history
  static final TestScriptOperationCode history = TestScriptOperationCode._(
    value: 'history',
  );

  /// create
  static final TestScriptOperationCode create = TestScriptOperationCode._(
    value: 'create',
  );

  /// search
  static final TestScriptOperationCode search = TestScriptOperationCode._(
    value: 'search',
  );

  /// batch
  static final TestScriptOperationCode batch = TestScriptOperationCode._(
    value: 'batch',
  );

  /// transaction
  static final TestScriptOperationCode transaction = TestScriptOperationCode._(
    value: 'transaction',
  );

  /// capabilities
  static final TestScriptOperationCode capabilities = TestScriptOperationCode._(
    value: 'capabilities',
  );

  /// apply
  static final TestScriptOperationCode apply = TestScriptOperationCode._(
    value: 'apply',
  );

  /// closure
  static final TestScriptOperationCode closure = TestScriptOperationCode._(
    value: 'closure',
  );

  /// find_matches
  static final TestScriptOperationCode find_matches = TestScriptOperationCode._(
    value: 'find-matches',
  );

  /// conforms
  static final TestScriptOperationCode conforms = TestScriptOperationCode._(
    value: 'conforms',
  );

  /// data_requirements
  static final TestScriptOperationCode data_requirements =
      TestScriptOperationCode._(
    value: 'data-requirements',
  );

  /// document
  static final TestScriptOperationCode document = TestScriptOperationCode._(
    value: 'document',
  );

  /// evaluate
  static final TestScriptOperationCode evaluate = TestScriptOperationCode._(
    value: 'evaluate',
  );

  /// evaluate_measure
  static final TestScriptOperationCode evaluate_measure =
      TestScriptOperationCode._(
    value: 'evaluate-measure',
  );

  /// everything
  static final TestScriptOperationCode everything = TestScriptOperationCode._(
    value: 'everything',
  );

  /// expand
  static final TestScriptOperationCode expand = TestScriptOperationCode._(
    value: 'expand',
  );

  /// find
  static final TestScriptOperationCode find = TestScriptOperationCode._(
    value: 'find',
  );

  /// graphql
  static final TestScriptOperationCode graphql = TestScriptOperationCode._(
    value: 'graphql',
  );

  /// implements_
  static final TestScriptOperationCode implements_ = TestScriptOperationCode._(
    value: 'implements',
  );

  /// lastn
  static final TestScriptOperationCode lastn = TestScriptOperationCode._(
    value: 'lastn',
  );

  /// lookup
  static final TestScriptOperationCode lookup = TestScriptOperationCode._(
    value: 'lookup',
  );

  /// match
  static final TestScriptOperationCode match = TestScriptOperationCode._(
    value: 'match',
  );

  /// meta
  static final TestScriptOperationCode meta = TestScriptOperationCode._(
    value: 'meta',
  );

  /// meta_add
  static final TestScriptOperationCode meta_add = TestScriptOperationCode._(
    value: 'meta-add',
  );

  /// meta_delete
  static final TestScriptOperationCode meta_delete = TestScriptOperationCode._(
    value: 'meta-delete',
  );

  /// populate
  static final TestScriptOperationCode populate = TestScriptOperationCode._(
    value: 'populate',
  );

  /// populatehtml
  static final TestScriptOperationCode populatehtml = TestScriptOperationCode._(
    value: 'populatehtml',
  );

  /// populatelink
  static final TestScriptOperationCode populatelink = TestScriptOperationCode._(
    value: 'populatelink',
  );

  /// process_message
  static final TestScriptOperationCode process_message =
      TestScriptOperationCode._(
    value: 'process-message',
  );

  /// questionnaire
  static final TestScriptOperationCode questionnaire =
      TestScriptOperationCode._(
    value: 'questionnaire',
  );

  /// stats
  static final TestScriptOperationCode stats = TestScriptOperationCode._(
    value: 'stats',
  );

  /// subset
  static final TestScriptOperationCode subset = TestScriptOperationCode._(
    value: 'subset',
  );

  /// subsumes
  static final TestScriptOperationCode subsumes = TestScriptOperationCode._(
    value: 'subsumes',
  );

  /// transform
  static final TestScriptOperationCode transform = TestScriptOperationCode._(
    value: 'transform',
  );

  /// translate
  static final TestScriptOperationCode translate = TestScriptOperationCode._(
    value: 'translate',
  );

  /// validate
  static final TestScriptOperationCode validate_ = TestScriptOperationCode._(
    value: 'validate',
  );

  /// validate_code
  static final TestScriptOperationCode validate_code =
      TestScriptOperationCode._(
    value: 'validate-code',
  );

  /// For instances where an Element is present but not value

  static final TestScriptOperationCode elementOnly =
      TestScriptOperationCode._(value: '');

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
    validate_,
    validate_code,
  ];

  /// Clones the current instance
  @override
  TestScriptOperationCode clone() => TestScriptOperationCode._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TestScriptOperationCode withElement(Element? newElement) {
    return TestScriptOperationCode._(value: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  TestScriptOperationCode copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return TestScriptOperationCode._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
