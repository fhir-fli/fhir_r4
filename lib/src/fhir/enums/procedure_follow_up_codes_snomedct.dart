// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Procedure follow up codes: A selection of SNOMED CT codes relevant to procedure follow up.
@Entity()
class ProcedureFollowUpCodesSNOMEDCT extends FhirCode {
  /// Factory constructor to create [ProcedureFollowUpCodesSNOMEDCT] from JSON.
  factory ProcedureFollowUpCodesSNOMEDCT.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProcedureFollowUpCodesSNOMEDCT.elementOnly(element);
    }
    if (values.contains(value)) {
      return ProcedureFollowUpCodesSNOMEDCT._(value, element);
    }
    throw ArgumentError(
      'ProcedureFollowUpCodesSNOMEDCT.fromJson: JSON value is not a valid value',
    );
  }

  /// value18949003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcedureFollowUpCodesSNOMEDCT.value18949003([this.element])
      : dbValue = '18949003',
        super('18949003', element);

  /// value30549001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcedureFollowUpCodesSNOMEDCT.value30549001([this.element])
      : dbValue = '30549001',
        super('30549001', element);

  /// value241031001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcedureFollowUpCodesSNOMEDCT.value241031001([this.element])
      : dbValue = '241031001',
        super('241031001', element);

  /// value35963001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcedureFollowUpCodesSNOMEDCT.value35963001([this.element])
      : dbValue = '35963001',
        super('35963001', element);

  /// value225164002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcedureFollowUpCodesSNOMEDCT.value225164002([this.element])
      : dbValue = '225164002',
        super('225164002', element);

  /// value447346005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcedureFollowUpCodesSNOMEDCT.value447346005([this.element])
      : dbValue = '447346005',
        super('447346005', element);

  /// value229506003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcedureFollowUpCodesSNOMEDCT.value229506003([this.element])
      : dbValue = '229506003',
        super('229506003', element);

  /// value274441001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcedureFollowUpCodesSNOMEDCT.value274441001([this.element])
      : dbValue = '274441001',
        super('274441001', element);

  /// value394725008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcedureFollowUpCodesSNOMEDCT.value394725008([this.element])
      : dbValue = '394725008',
        super('394725008', element);

  /// value359825008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcedureFollowUpCodesSNOMEDCT.value359825008([this.element])
      : dbValue = '359825008',
        super('359825008', element);

  /// For instances where an Element is present but not value

  ProcedureFollowUpCodesSNOMEDCT.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ProcedureFollowUpCodesSNOMEDCT._(super.input, [super.element])
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
    '18949003',
    '30549001',
    '241031001',
    '35963001',
    '225164002',
    '447346005',
    '229506003',
    '274441001',
    '394725008',
    '359825008',
  ];

  /// Returns the enum value with an element attached
  ProcedureFollowUpCodesSNOMEDCT withElement(Element? newElement) {
    return ProcedureFollowUpCodesSNOMEDCT._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProcedureFollowUpCodesSNOMEDCT.$value';
}
