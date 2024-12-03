// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that are used to indicate the supported operations of a testing engine or tool.
class TestScriptOperationCode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  TestScriptOperationCode._(super.value, [super.element]);

  /// Factory constructor to create [TestScriptOperationCode] from JSON.
  factory TestScriptOperationCode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestScriptOperationCode.elementOnly.withElement(element);
    }
    return TestScriptOperationCode._(value, element);
  }

  /// read
  static final TestScriptOperationCode read = TestScriptOperationCode._(
    'read',
  );

  /// vread
  static final TestScriptOperationCode vread = TestScriptOperationCode._(
    'vread',
  );

  /// update
  static final TestScriptOperationCode update = TestScriptOperationCode._(
    'update',
  );

  /// updateCreate
  static final TestScriptOperationCode updateCreate = TestScriptOperationCode._(
    'updateCreate',
  );

  /// patch
  static final TestScriptOperationCode patch = TestScriptOperationCode._(
    'patch',
  );

  /// delete
  static final TestScriptOperationCode delete = TestScriptOperationCode._(
    'delete',
  );

  /// deleteCondSingle
  static final TestScriptOperationCode deleteCondSingle =
      TestScriptOperationCode._(
    'deleteCondSingle',
  );

  /// deleteCondMultiple
  static final TestScriptOperationCode deleteCondMultiple =
      TestScriptOperationCode._(
    'deleteCondMultiple',
  );

  /// history
  static final TestScriptOperationCode history = TestScriptOperationCode._(
    'history',
  );

  /// create
  static final TestScriptOperationCode create = TestScriptOperationCode._(
    'create',
  );

  /// search
  static final TestScriptOperationCode search = TestScriptOperationCode._(
    'search',
  );

  /// batch
  static final TestScriptOperationCode batch = TestScriptOperationCode._(
    'batch',
  );

  /// transaction
  static final TestScriptOperationCode transaction = TestScriptOperationCode._(
    'transaction',
  );

  /// capabilities
  static final TestScriptOperationCode capabilities = TestScriptOperationCode._(
    'capabilities',
  );

  /// apply
  static final TestScriptOperationCode apply = TestScriptOperationCode._(
    'apply',
  );

  /// closure
  static final TestScriptOperationCode closure = TestScriptOperationCode._(
    'closure',
  );

  /// find_matches
  static final TestScriptOperationCode find_matches = TestScriptOperationCode._(
    'find-matches',
  );

  /// conforms
  static final TestScriptOperationCode conforms = TestScriptOperationCode._(
    'conforms',
  );

  /// data_requirements
  static final TestScriptOperationCode data_requirements =
      TestScriptOperationCode._(
    'data-requirements',
  );

  /// document
  static final TestScriptOperationCode document = TestScriptOperationCode._(
    'document',
  );

  /// evaluate
  static final TestScriptOperationCode evaluate = TestScriptOperationCode._(
    'evaluate',
  );

  /// evaluate_measure
  static final TestScriptOperationCode evaluate_measure =
      TestScriptOperationCode._(
    'evaluate-measure',
  );

  /// everything
  static final TestScriptOperationCode everything = TestScriptOperationCode._(
    'everything',
  );

  /// expand
  static final TestScriptOperationCode expand = TestScriptOperationCode._(
    'expand',
  );

  /// find
  static final TestScriptOperationCode find = TestScriptOperationCode._(
    'find',
  );

  /// graphql
  static final TestScriptOperationCode graphql = TestScriptOperationCode._(
    'graphql',
  );

  /// implements_
  static final TestScriptOperationCode implements_ = TestScriptOperationCode._(
    'implements',
  );

  /// lastn
  static final TestScriptOperationCode lastn = TestScriptOperationCode._(
    'lastn',
  );

  /// lookup
  static final TestScriptOperationCode lookup = TestScriptOperationCode._(
    'lookup',
  );

  /// match
  static final TestScriptOperationCode match = TestScriptOperationCode._(
    'match',
  );

  /// meta
  static final TestScriptOperationCode meta = TestScriptOperationCode._(
    'meta',
  );

  /// meta_add
  static final TestScriptOperationCode meta_add = TestScriptOperationCode._(
    'meta-add',
  );

  /// meta_delete
  static final TestScriptOperationCode meta_delete = TestScriptOperationCode._(
    'meta-delete',
  );

  /// populate
  static final TestScriptOperationCode populate = TestScriptOperationCode._(
    'populate',
  );

  /// populatehtml
  static final TestScriptOperationCode populatehtml = TestScriptOperationCode._(
    'populatehtml',
  );

  /// populatelink
  static final TestScriptOperationCode populatelink = TestScriptOperationCode._(
    'populatelink',
  );

  /// process_message
  static final TestScriptOperationCode process_message =
      TestScriptOperationCode._(
    'process-message',
  );

  /// questionnaire
  static final TestScriptOperationCode questionnaire =
      TestScriptOperationCode._(
    'questionnaire',
  );

  /// stats
  static final TestScriptOperationCode stats = TestScriptOperationCode._(
    'stats',
  );

  /// subset
  static final TestScriptOperationCode subset = TestScriptOperationCode._(
    'subset',
  );

  /// subsumes
  static final TestScriptOperationCode subsumes = TestScriptOperationCode._(
    'subsumes',
  );

  /// transform
  static final TestScriptOperationCode transform = TestScriptOperationCode._(
    'transform',
  );

  /// translate
  static final TestScriptOperationCode translate = TestScriptOperationCode._(
    'translate',
  );

  /// validate
  static final TestScriptOperationCode validate_ = TestScriptOperationCode._(
    'validate',
  );

  /// validate_code
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
    validate_,
    validate_code,
  ];

  /// Clones the current instance
  @override
  TestScriptOperationCode clone() =>
      TestScriptOperationCode._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  TestScriptOperationCode setElement(String name, dynamic elementValue) {
    return TestScriptOperationCode._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  TestScriptOperationCode withElement(Element? newElement) {
    return TestScriptOperationCode._(value, newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return TestScriptOperationCode._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
