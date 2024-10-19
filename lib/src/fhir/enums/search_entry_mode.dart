// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Why an entry is in the result set - whether it's included as a match or because of an _include requirement, or to convey information or warning information about the search process.
@Entity()
class SearchEntryMode extends FhirCode {
  /// Factory constructor to create [SearchEntryMode] from JSON.
  factory SearchEntryMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchEntryMode.elementOnly(element);
    }
    if (values.contains(value)) {
      return SearchEntryMode._(value, element);
    }
    throw ArgumentError(
      'SearchEntryMode.fromJson: JSON value is not a valid value',
    );
  }

  /// match
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchEntryMode.match([this.element])
      : dbValue = 'match',
        super('match', element);

  /// include
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchEntryMode.include([this.element])
      : dbValue = 'include',
        super('include', element);

  /// outcome
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchEntryMode.outcome([this.element])
      : dbValue = 'outcome',
        super('outcome', element);

  /// For instances where an Element is present but not value

  SearchEntryMode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SearchEntryMode._(super.input, [super.element])
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
    'match',
    'include',
    'outcome',
  ];

  /// Returns the enum value with an element attached
  SearchEntryMode withElement(Element? newElement) {
    return SearchEntryMode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SearchEntryMode.$value';
}
