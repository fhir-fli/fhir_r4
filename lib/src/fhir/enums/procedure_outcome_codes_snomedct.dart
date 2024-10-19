// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Procedure Outcome code: A selection of relevant SNOMED CT codes.
@Entity()
class ProcedureOutcomeCodesSNOMEDCT extends FhirCode {
  /// Factory constructor to create [ProcedureOutcomeCodesSNOMEDCT] from JSON.
  factory ProcedureOutcomeCodesSNOMEDCT.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProcedureOutcomeCodesSNOMEDCT.elementOnly(element);
    }
    if (values.contains(value)) {
      return ProcedureOutcomeCodesSNOMEDCT._(value, element);
    }
    throw ArgumentError(
      'ProcedureOutcomeCodesSNOMEDCT.fromJson: JSON value is not a valid value',
    );
  }

  /// value385669000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcedureOutcomeCodesSNOMEDCT.value385669000([this.element])
      : dbValue = '385669000',
        super('385669000', element);

  /// value385671000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcedureOutcomeCodesSNOMEDCT.value385671000([this.element])
      : dbValue = '385671000',
        super('385671000', element);

  /// value385670004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcedureOutcomeCodesSNOMEDCT.value385670004([this.element])
      : dbValue = '385670004',
        super('385670004', element);

  /// For instances where an Element is present but not value

  ProcedureOutcomeCodesSNOMEDCT.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ProcedureOutcomeCodesSNOMEDCT._(super.input, [super.element])
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
    '385669000',
    '385671000',
    '385670004',
  ];

  /// Returns the enum value with an element attached
  ProcedureOutcomeCodesSNOMEDCT withElement(Element? newElement) {
    return ProcedureOutcomeCodesSNOMEDCT._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProcedureOutcomeCodesSNOMEDCT.$value';
}
