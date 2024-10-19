// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The processing mode that applies to this list.
@Entity()
class ListMode extends FhirCode {
  /// Factory constructor to create [ListMode] from JSON.
  factory ListMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ListMode.elementOnly(element);
    }
    if (values.contains(value)) {
      return ListMode._(value, element);
    }
    throw ArgumentError(
      'ListMode.fromJson: JSON value is not a valid value',
    );
  }

  /// working
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ListMode.working([this.element])
      : dbValue = 'working',
        super('working', element);

  /// snapshot
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ListMode.snapshot([this.element])
      : dbValue = 'snapshot',
        super('snapshot', element);

  /// changes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ListMode.changes([this.element])
      : dbValue = 'changes',
        super('changes', element);

  /// For instances where an Element is present but not value

  ListMode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ListMode._(super.input, [super.element])
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
    'working',
    'snapshot',
    'changes',
  ];

  /// Returns the enum value with an element attached
  ListMode withElement(Element? newElement) {
    return ListMode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ListMode.$value';
}
