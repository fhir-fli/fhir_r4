// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Example Message Reasons. These are the set of codes that might be used an updating an encounter using admin-update.
@collection
class ExampleMessageReasonCodes {
  /// Constructor for internal use (like enum)
  ExampleMessageReasonCodes({this.fhirCode, this.element})
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

  /// ExampleMessageReasonCodes values
  /// admit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleMessageReasonCodes admit = ExampleMessageReasonCodes(
    fhirCode: 'admit',
  );

  /// discharge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleMessageReasonCodes discharge = ExampleMessageReasonCodes(
    fhirCode: 'discharge',
  );

  /// absent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleMessageReasonCodes absent = ExampleMessageReasonCodes(
    fhirCode: 'absent',
  );

  /// return_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleMessageReasonCodes return_ = ExampleMessageReasonCodes(
    fhirCode: 'return',
  );

  /// moved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleMessageReasonCodes moved = ExampleMessageReasonCodes(
    fhirCode: 'moved',
  );

  /// edit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleMessageReasonCodes edit = ExampleMessageReasonCodes(
    fhirCode: 'edit',
  );

  /// For instances where an Element is present but not value

  static final ExampleMessageReasonCodes elementOnly =
      ExampleMessageReasonCodes();

  /// List of all enum-like values
  static final List<ExampleMessageReasonCodes> values = [
    admit,
    discharge,
    absent,
    return_,
    moved,
    edit,
  ];

  /// Returns the enum value with an element attached
  ExampleMessageReasonCodes withElement(Element? newElement) {
    return ExampleMessageReasonCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ExampleMessageReasonCodes] from JSON.
  static ExampleMessageReasonCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleMessageReasonCodes.elementOnly.withElement(element);
    }
    return ExampleMessageReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleMessageReasonCodes.$fhirCode';
}
