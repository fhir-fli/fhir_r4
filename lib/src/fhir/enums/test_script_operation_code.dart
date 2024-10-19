// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set defines a set of codes that are used to indicate the supported operations of a testing engine or tool.
@Entity()
class TestScriptOperationCode extends FhirCode {
  /// Factory constructor to create [TestScriptOperationCode] from JSON.
  factory TestScriptOperationCode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestScriptOperationCode.elementOnly(element);
    }
    if (values.contains(value)) {
      return TestScriptOperationCode._(value, element);
    }
    throw ArgumentError(
      'TestScriptOperationCode.fromJson: JSON value is not a valid value',
    );
  }

  /// read
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.read([this.element])
      : dbValue = 'read',
        super('read', element);

  /// vread
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.vread([this.element])
      : dbValue = 'vread',
        super('vread', element);

  /// update
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.update([this.element])
      : dbValue = 'update',
        super('update', element);

  /// updateCreate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.updateCreate([this.element])
      : dbValue = 'updateCreate',
        super('updateCreate', element);

  /// patch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.patch([this.element])
      : dbValue = 'patch',
        super('patch', element);

  /// delete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.delete([this.element])
      : dbValue = 'delete',
        super('delete', element);

  /// deleteCondSingle
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.deleteCondSingle([this.element])
      : dbValue = 'deleteCondSingle',
        super('deleteCondSingle', element);

  /// deleteCondMultiple
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.deleteCondMultiple([this.element])
      : dbValue = 'deleteCondMultiple',
        super('deleteCondMultiple', element);

  /// history
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.history([this.element])
      : dbValue = 'history',
        super('history', element);

  /// create
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.create([this.element])
      : dbValue = 'create',
        super('create', element);

  /// search
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.search([this.element])
      : dbValue = 'search',
        super('search', element);

  /// batch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.batch([this.element])
      : dbValue = 'batch',
        super('batch', element);

  /// transaction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.transaction([this.element])
      : dbValue = 'transaction',
        super('transaction', element);

  /// capabilities
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.capabilities([this.element])
      : dbValue = 'capabilities',
        super('capabilities', element);

  /// apply
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.apply([this.element])
      : dbValue = 'apply',
        super('apply', element);

  /// closure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.closure([this.element])
      : dbValue = 'closure',
        super('closure', element);

  /// find_matches
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.find_matches([this.element])
      : dbValue = 'find-matches',
        super('find-matches', element);

  /// conforms
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.conforms([this.element])
      : dbValue = 'conforms',
        super('conforms', element);

  /// data_requirements
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.data_requirements([this.element])
      : dbValue = 'data-requirements',
        super('data-requirements', element);

  /// document
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.document([this.element])
      : dbValue = 'document',
        super('document', element);

  /// evaluate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.evaluate([this.element])
      : dbValue = 'evaluate',
        super('evaluate', element);

  /// evaluate_measure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.evaluate_measure([this.element])
      : dbValue = 'evaluate-measure',
        super('evaluate-measure', element);

  /// everything
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.everything([this.element])
      : dbValue = 'everything',
        super('everything', element);

  /// expand
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.expand([this.element])
      : dbValue = 'expand',
        super('expand', element);

  /// find
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.find([this.element])
      : dbValue = 'find',
        super('find', element);

  /// graphql
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.graphql([this.element])
      : dbValue = 'graphql',
        super('graphql', element);

  /// implements_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.implements_([this.element])
      : dbValue = 'implements',
        super('implements', element);

  /// lastn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.lastn([this.element])
      : dbValue = 'lastn',
        super('lastn', element);

  /// lookup
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.lookup([this.element])
      : dbValue = 'lookup',
        super('lookup', element);

  /// match
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.match([this.element])
      : dbValue = 'match',
        super('match', element);

  /// meta
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.meta([this.element])
      : dbValue = 'meta',
        super('meta', element);

  /// meta_add
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.meta_add([this.element])
      : dbValue = 'meta-add',
        super('meta-add', element);

  /// meta_delete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.meta_delete([this.element])
      : dbValue = 'meta-delete',
        super('meta-delete', element);

  /// populate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.populate([this.element])
      : dbValue = 'populate',
        super('populate', element);

  /// populatehtml
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.populatehtml([this.element])
      : dbValue = 'populatehtml',
        super('populatehtml', element);

  /// populatelink
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.populatelink([this.element])
      : dbValue = 'populatelink',
        super('populatelink', element);

  /// process_message
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.process_message([this.element])
      : dbValue = 'process-message',
        super('process-message', element);

  /// questionnaire
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.questionnaire([this.element])
      : dbValue = 'questionnaire',
        super('questionnaire', element);

  /// stats
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.stats([this.element])
      : dbValue = 'stats',
        super('stats', element);

  /// subset
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.subset([this.element])
      : dbValue = 'subset',
        super('subset', element);

  /// subsumes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.subsumes([this.element])
      : dbValue = 'subsumes',
        super('subsumes', element);

  /// transform
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.transform([this.element])
      : dbValue = 'transform',
        super('transform', element);

  /// translate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.translate([this.element])
      : dbValue = 'translate',
        super('translate', element);

  /// validate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.validate([this.element])
      : dbValue = 'validate',
        super('validate', element);

  /// validate_code
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptOperationCode.validate_code([this.element])
      : dbValue = 'validate-code',
        super('validate-code', element);

  /// For instances where an Element is present but not value

  TestScriptOperationCode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  TestScriptOperationCode._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'read',
    'vread',
    'update',
    'updateCreate',
    'patch',
    'delete',
    'deleteCondSingle',
    'deleteCondMultiple',
    'history',
    'create',
    'search',
    'batch',
    'transaction',
    'capabilities',
    'apply',
    'closure',
    'find-matches',
    'conforms',
    'data-requirements',
    'document',
    'evaluate',
    'evaluate-measure',
    'everything',
    'expand',
    'find',
    'graphql',
    'implements',
    'lastn',
    'lookup',
    'match',
    'meta',
    'meta-add',
    'meta-delete',
    'populate',
    'populatehtml',
    'populatelink',
    'process-message',
    'questionnaire',
    'stats',
    'subset',
    'subsumes',
    'transform',
    'translate',
    'validate',
    'validate-code',
  ];

  /// Returns the enum value with an element attached
  TestScriptOperationCode withElement(Element? newElement) {
    return TestScriptOperationCode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TestScriptOperationCode.$value';
}
