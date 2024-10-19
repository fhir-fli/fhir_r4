// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// MedicationAdministration Performer Function Codes
@Entity()
class MedicationAdministrationPerformerFunctionCodes extends FhirCode {
  /// Factory constructor to create [MedicationAdministrationPerformerFunctionCodes] from JSON.
  factory MedicationAdministrationPerformerFunctionCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationAdministrationPerformerFunctionCodes.elementOnly(
          element);
    }
    if (values.contains(value)) {
      return MedicationAdministrationPerformerFunctionCodes._(value, element);
    }
    throw ArgumentError(
      'MedicationAdministrationPerformerFunctionCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// performer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationAdministrationPerformerFunctionCodes.performer([this.element])
      : dbValue = 'performer',
        super('performer', element);

  /// verifier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationAdministrationPerformerFunctionCodes.verifier([this.element])
      : dbValue = 'verifier',
        super('verifier', element);

  /// witness
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationAdministrationPerformerFunctionCodes.witness([this.element])
      : dbValue = 'witness',
        super('witness', element);

  /// For instances where an Element is present but not value

  MedicationAdministrationPerformerFunctionCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MedicationAdministrationPerformerFunctionCodes._(super.input, [super.element])
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
    'performer',
    'verifier',
    'witness',
  ];

  /// Returns the enum value with an element attached
  MedicationAdministrationPerformerFunctionCodes withElement(
      Element? newElement) {
    return MedicationAdministrationPerformerFunctionCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationAdministrationPerformerFunctionCodes.$value';
}
