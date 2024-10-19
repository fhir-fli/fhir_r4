// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes sample ICD-10 Procedure codes.
@Entity()
class ICD10ProcedureCodes extends FhirCode {
  /// Factory constructor to create [ICD10ProcedureCodes] from JSON.
  factory ICD10ProcedureCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ICD10ProcedureCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ICD10ProcedureCodes._(value, element);
    }
    throw ArgumentError(
      'ICD10ProcedureCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// value123001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ICD10ProcedureCodes.value123001([this.element])
      : dbValue = '123001',
        super('123001', element);

  /// value123002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ICD10ProcedureCodes.value123002([this.element])
      : dbValue = '123002',
        super('123002', element);

  /// value123003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ICD10ProcedureCodes.value123003([this.element])
      : dbValue = '123003',
        super('123003', element);

  /// For instances where an Element is present but not value

  ICD10ProcedureCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ICD10ProcedureCodes._(super.input, [super.element])
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
    '123001',
    '123002',
    '123003',
  ];

  /// Returns the enum value with an element attached
  ICD10ProcedureCodes withElement(Element? newElement) {
    return ICD10ProcedureCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ICD10ProcedureCodes.$value';
}
