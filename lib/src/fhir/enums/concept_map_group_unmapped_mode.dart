// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Defines which action to take if there is no match in the group.
@Entity()
class ConceptMapGroupUnmappedMode extends FhirCode {
  /// Factory constructor to create [ConceptMapGroupUnmappedMode] from JSON.
  factory ConceptMapGroupUnmappedMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConceptMapGroupUnmappedMode.elementOnly(element);
    }
    if (values.contains(value)) {
      return ConceptMapGroupUnmappedMode._(value, element);
    }
    throw ArgumentError(
      'ConceptMapGroupUnmappedMode.fromJson: JSON value is not a valid value',
    );
  }

  /// provided
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConceptMapGroupUnmappedMode.provided([this.element])
      : dbValue = 'provided',
        super('provided', element);

  /// fixed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConceptMapGroupUnmappedMode.fixed([this.element])
      : dbValue = 'fixed',
        super('fixed', element);

  /// other_map
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConceptMapGroupUnmappedMode.other_map([this.element])
      : dbValue = 'other-map',
        super('other-map', element);

  /// For instances where an Element is present but not value

  ConceptMapGroupUnmappedMode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ConceptMapGroupUnmappedMode._(super.input, [super.element])
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
    'provided',
    'fixed',
    'other-map',
  ];

  /// Returns the enum value with an element attached
  ConceptMapGroupUnmappedMode withElement(Element? newElement) {
    return ConceptMapGroupUnmappedMode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConceptMapGroupUnmappedMode.$value';
}
