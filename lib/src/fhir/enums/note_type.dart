// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The presentation types of notes.
@collection
class NoteType {
  /// Constructor for internal use (like enum)
  NoteType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// NoteType values
  /// display
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NoteType display = NoteType(
    fhirCode: 'display',
  );

  /// print
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NoteType print = NoteType(
    fhirCode: 'print',
  );

  /// printoper
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NoteType printoper = NoteType(
    fhirCode: 'printoper',
  );

  /// For instances where an Element is present but not value

  static final NoteType elementOnly = NoteType();

  /// List of all enum-like values
  static final List<NoteType> values = [
    display,
    print,
    printoper,
  ];

  /// Returns the enum value with an element attached
  NoteType withElement(Element? newElement) {
    return NoteType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [NoteType] from JSON.
  static NoteType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NoteType.elementOnly.withElement(element);
    }
    return NoteType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'NoteType.$fhirCode';
}
