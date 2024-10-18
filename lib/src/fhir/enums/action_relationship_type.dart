// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ActionRelationshipType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ActionRelationshipType] instances.
  static ActionRelationshipType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionRelationshipType.elementOnly.withElement(element);
    }
    return ActionRelationshipType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ActionRelationshipType withElement(Element? newElement) {
    return ActionRelationshipType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
