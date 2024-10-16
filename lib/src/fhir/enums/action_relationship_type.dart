import 'package:fhir_r4/fhir_r4.dart';

/// Defines the types of relationships between actions.
enum ActionRelationshipType {
  /// Display: Before Start
  /// Definition: The action must be performed before the start of the related action.
  before_start('before-start'),

  /// Display: Before
  /// Definition: The action must be performed before the related action.
  before('before'),

  /// Display: Before End
  /// Definition: The action must be performed before the end of the related action.
  before_end('before-end'),

  /// Display: Concurrent With Start
  /// Definition: The action must be performed concurrent with the start of the related action.
  concurrent_with_start('concurrent-with-start'),

  /// Display: Concurrent
  /// Definition: The action must be performed concurrent with the related action.
  concurrent('concurrent'),

  /// Display: Concurrent With End
  /// Definition: The action must be performed concurrent with the end of the related action.
  concurrent_with_end('concurrent-with-end'),

  /// Display: After Start
  /// Definition: The action must be performed after the start of the related action.
  after_start('after-start'),

  /// Display: After
  /// Definition: The action must be performed after the related action.
  after('after'),

  /// Display: After End
  /// Definition: The action must be performed after the end of the related action.
  after_end('after-end'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ActionRelationshipType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ActionRelationshipType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionRelationshipType.elementOnly.withElement(element);
    }
    return ActionRelationshipType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ActionRelationshipType withElement(Element? newElement) {
    return ActionRelationshipType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
