// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines the types of relationships between actions.
class ActionRelationshipType {
  // Private constructor for internal use (like enum)
  ActionRelationshipType._(this.fhirCode, {this.element});

  /// Factory constructor to create [ActionRelationshipType] from JSON.
  factory ActionRelationshipType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionRelationshipType.elementOnly.withElement(element);
    }
    return ActionRelationshipType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ActionRelationshipType values
  /// before_start
  static final ActionRelationshipType before_start = ActionRelationshipType._(
    'before-start',
  );

  /// before
  static final ActionRelationshipType before = ActionRelationshipType._(
    'before',
  );

  /// before_end
  static final ActionRelationshipType before_end = ActionRelationshipType._(
    'before-end',
  );

  /// concurrent_with_start
  static final ActionRelationshipType concurrent_with_start =
      ActionRelationshipType._(
    'concurrent-with-start',
  );

  /// concurrent
  static final ActionRelationshipType concurrent = ActionRelationshipType._(
    'concurrent',
  );

  /// concurrent_with_end
  static final ActionRelationshipType concurrent_with_end =
      ActionRelationshipType._(
    'concurrent-with-end',
  );

  /// after_start
  static final ActionRelationshipType after_start = ActionRelationshipType._(
    'after-start',
  );

  /// after
  static final ActionRelationshipType after = ActionRelationshipType._(
    'after',
  );

  /// after_end
  static final ActionRelationshipType after_end = ActionRelationshipType._(
    'after-end',
  );

  /// For instances where an Element is present but not value

  static final ActionRelationshipType elementOnly =
      ActionRelationshipType._('');

  /// List of all enum-like values
  static final List<ActionRelationshipType> values = [
    before_start,
    before,
    before_end,
    concurrent_with_start,
    concurrent,
    concurrent_with_end,
    after_start,
    after,
    after_end,
  ];

  /// Returns the enum value with an element attached
  ActionRelationshipType withElement(Element? newElement) {
    return ActionRelationshipType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
