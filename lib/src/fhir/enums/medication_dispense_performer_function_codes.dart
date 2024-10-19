// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// MedicationDispense Performer Function Codes
@Entity()
class MedicationDispensePerformerFunctionCodes extends FhirCode {
  /// Factory constructor to create [MedicationDispensePerformerFunctionCodes] from JSON.
  factory MedicationDispensePerformerFunctionCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationDispensePerformerFunctionCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return MedicationDispensePerformerFunctionCodes._(value, element);
    }
    throw ArgumentError(
      'MedicationDispensePerformerFunctionCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// dataenterer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispensePerformerFunctionCodes.dataenterer([this.element])
      : dbValue = 'dataenterer',
        super('dataenterer', element);

  /// packager
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispensePerformerFunctionCodes.packager([this.element])
      : dbValue = 'packager',
        super('packager', element);

  /// checker
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispensePerformerFunctionCodes.checker([this.element])
      : dbValue = 'checker',
        super('checker', element);

  /// finalchecker
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispensePerformerFunctionCodes.finalchecker([this.element])
      : dbValue = 'finalchecker',
        super('finalchecker', element);

  /// For instances where an Element is present but not value

  MedicationDispensePerformerFunctionCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MedicationDispensePerformerFunctionCodes._(super.input, [super.element])
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
    'dataenterer',
    'packager',
    'checker',
    'finalchecker',
  ];

  /// Returns the enum value with an element attached
  MedicationDispensePerformerFunctionCodes withElement(Element? newElement) {
    return MedicationDispensePerformerFunctionCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationDispensePerformerFunctionCodes.$value';
}
