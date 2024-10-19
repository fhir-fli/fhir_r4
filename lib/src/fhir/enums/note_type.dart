// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The presentation types of notes.
@Entity()
class NoteType extends FhirCode {
  /// Factory constructor to create [NoteType] from JSON.
  factory NoteType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NoteType.elementOnly(element);
    }
    if (values.contains(value)) {
      return NoteType._(value, element);
    }
    throw ArgumentError(
      'NoteType.fromJson: JSON value is not a valid value',
    );
  }

  /// display
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NoteType.display([this.element])
      : dbValue = 'display',
        super('display', element);

  /// print
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NoteType.print([this.element])
      : dbValue = 'print',
        super('print', element);

  /// printoper
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NoteType.printoper([this.element])
      : dbValue = 'printoper',
        super('printoper', element);

  /// For instances where an Element is present but not value

  NoteType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  NoteType._(super.input, [super.element])
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
    'display',
    'print',
    'printoper',
  ];

  /// Returns the enum value with an element attached
  NoteType withElement(Element? newElement) {
    return NoteType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'NoteType.$value';
}
