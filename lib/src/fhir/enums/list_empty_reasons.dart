// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// General reasons for a list to be empty. Reasons are either related to a summary list (i.e. problem or medication list) or to a workflow related list (i.e. consultation list).
@Entity()
class ListEmptyReasons extends FhirCode {
  /// Factory constructor to create [ListEmptyReasons] from JSON.
  factory ListEmptyReasons.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ListEmptyReasons.elementOnly(element);
    }
    if (values.contains(value)) {
      return ListEmptyReasons._(value, element);
    }
    throw ArgumentError(
      'ListEmptyReasons.fromJson: JSON value is not a valid value',
    );
  }

  /// nilknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ListEmptyReasons.nilknown([this.element])
      : dbValue = 'nilknown',
        super('nilknown', element);

  /// notasked
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ListEmptyReasons.notasked([this.element])
      : dbValue = 'notasked',
        super('notasked', element);

  /// withheld
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ListEmptyReasons.withheld([this.element])
      : dbValue = 'withheld',
        super('withheld', element);

  /// unavailable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ListEmptyReasons.unavailable([this.element])
      : dbValue = 'unavailable',
        super('unavailable', element);

  /// notstarted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ListEmptyReasons.notstarted([this.element])
      : dbValue = 'notstarted',
        super('notstarted', element);

  /// closed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ListEmptyReasons.closed([this.element])
      : dbValue = 'closed',
        super('closed', element);

  /// For instances where an Element is present but not value

  ListEmptyReasons.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ListEmptyReasons._(super.input, [super.element])
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
    'nilknown',
    'notasked',
    'withheld',
    'unavailable',
    'notstarted',
    'closed',
  ];

  /// Returns the enum value with an element attached
  ListEmptyReasons withElement(Element? newElement) {
    return ListEmptyReasons._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ListEmptyReasons.$value';
}
