// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The possible sort directions, ascending or descending.
@Entity()
class SortDirection extends FhirCode {
  /// Factory constructor to create [SortDirection] from JSON.
  factory SortDirection.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SortDirection.elementOnly(element);
    }
    if (values.contains(value)) {
      return SortDirection._(value, element);
    }
    throw ArgumentError(
      'SortDirection.fromJson: JSON value is not a valid value',
    );
  }

  /// ascending
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SortDirection.ascending([this.element])
      : dbValue = 'ascending',
        super('ascending', element);

  /// descending
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SortDirection.descending([this.element])
      : dbValue = 'descending',
        super('descending', element);

  /// For instances where an Element is present but not value

  SortDirection.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SortDirection._(super.input, [super.element])
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
    'ascending',
    'descending',
  ];

  /// Returns the enum value with an element attached
  SortDirection withElement(Element? newElement) {
    return SortDirection._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SortDirection.$value';
}
