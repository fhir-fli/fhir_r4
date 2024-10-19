// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The meaning of the hierarchy of concepts in a code system.
@Entity()
class CodeSystemHierarchyMeaning extends FhirCode {
  /// Factory constructor to create [CodeSystemHierarchyMeaning] from JSON.
  factory CodeSystemHierarchyMeaning.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSystemHierarchyMeaning.elementOnly(element);
    }
    if (values.contains(value)) {
      return CodeSystemHierarchyMeaning._(value, element);
    }
    throw ArgumentError(
      'CodeSystemHierarchyMeaning.fromJson: JSON value is not a valid value',
    );
  }

  /// grouped_by
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CodeSystemHierarchyMeaning.grouped_by([this.element])
      : dbValue = 'grouped-by',
        super('grouped-by', element);

  /// is_a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CodeSystemHierarchyMeaning.is_a([this.element])
      : dbValue = 'is-a',
        super('is-a', element);

  /// part_of
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CodeSystemHierarchyMeaning.part_of([this.element])
      : dbValue = 'part-of',
        super('part-of', element);

  /// classified_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CodeSystemHierarchyMeaning.classified_with([this.element])
      : dbValue = 'classified-with',
        super('classified-with', element);

  /// For instances where an Element is present but not value

  CodeSystemHierarchyMeaning.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CodeSystemHierarchyMeaning._(super.input, [super.element])
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
    'grouped-by',
    'is-a',
    'part-of',
    'classified-with',
  ];

  /// Returns the enum value with an element attached
  CodeSystemHierarchyMeaning withElement(Element? newElement) {
    return CodeSystemHierarchyMeaning._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CodeSystemHierarchyMeaning.$value';
}
