// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A supported modifier for a search parameter.
@Entity()
class SearchModifierCode extends FhirCode {
  /// Factory constructor to create [SearchModifierCode] from JSON.
  factory SearchModifierCode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchModifierCode.elementOnly(element);
    }
    if (values.contains(value)) {
      return SearchModifierCode._(value, element);
    }
    throw ArgumentError(
      'SearchModifierCode.fromJson: JSON value is not a valid value',
    );
  }

  /// missing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchModifierCode.missing([this.element])
      : dbValue = 'missing',
        super('missing', element);

  /// exact
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchModifierCode.exact([this.element])
      : dbValue = 'exact',
        super('exact', element);

  /// contains
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchModifierCode.contains([this.element])
      : dbValue = 'contains',
        super('contains', element);

  /// not
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchModifierCode.not([this.element])
      : dbValue = 'not',
        super('not', element);

  /// text
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchModifierCode.text([this.element])
      : dbValue = 'text',
        super('text', element);

  /// in_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchModifierCode.in_([this.element])
      : dbValue = 'in',
        super('in', element);

  /// not_in
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchModifierCode.not_in([this.element])
      : dbValue = 'not-in',
        super('not-in', element);

  /// below
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchModifierCode.below([this.element])
      : dbValue = 'below',
        super('below', element);

  /// above
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchModifierCode.above([this.element])
      : dbValue = 'above',
        super('above', element);

  /// type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchModifierCode.type([this.element])
      : dbValue = 'type',
        super('type', element);

  /// identifier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchModifierCode.identifier([this.element])
      : dbValue = 'identifier',
        super('identifier', element);

  /// ofType
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchModifierCode.ofType([this.element])
      : dbValue = 'ofType',
        super('ofType', element);

  /// For instances where an Element is present but not value

  SearchModifierCode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SearchModifierCode._(super.input, [super.element])
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
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'missing',
    'exact',
    'contains',
    'not',
    'text',
    'in',
    'not-in',
    'below',
    'above',
    'type',
    'identifier',
    'ofType',
  ];

  /// Returns the enum value with an element attached
  SearchModifierCode withElement(Element? newElement) {
    return SearchModifierCode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SearchModifierCode.$value';
}
