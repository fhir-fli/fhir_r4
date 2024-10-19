// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Procedure Category code: A selection of relevant SNOMED CT codes.
@Entity()
class ProcedureCategoryCodesSNOMEDCT extends FhirCode {
  /// Factory constructor to create [ProcedureCategoryCodesSNOMEDCT] from JSON.
  factory ProcedureCategoryCodesSNOMEDCT.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProcedureCategoryCodesSNOMEDCT.elementOnly(element);
    }
    if (values.contains(value)) {
      return ProcedureCategoryCodesSNOMEDCT._(value, element);
    }
    throw ArgumentError(
      'ProcedureCategoryCodesSNOMEDCT.fromJson: JSON value is not a valid value',
    );
  }

  /// value24642003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcedureCategoryCodesSNOMEDCT.value24642003([this.element])
      : dbValue = '24642003',
        super('24642003', element);

  /// value409063005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcedureCategoryCodesSNOMEDCT.value409063005([this.element])
      : dbValue = '409063005',
        super('409063005', element);

  /// value409073007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcedureCategoryCodesSNOMEDCT.value409073007([this.element])
      : dbValue = '409073007',
        super('409073007', element);

  /// value387713003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcedureCategoryCodesSNOMEDCT.value387713003([this.element])
      : dbValue = '387713003',
        super('387713003', element);

  /// value103693007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcedureCategoryCodesSNOMEDCT.value103693007([this.element])
      : dbValue = '103693007',
        super('103693007', element);

  /// value46947000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcedureCategoryCodesSNOMEDCT.value46947000([this.element])
      : dbValue = '46947000',
        super('46947000', element);

  /// value410606002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcedureCategoryCodesSNOMEDCT.value410606002([this.element])
      : dbValue = '410606002',
        super('410606002', element);

  /// For instances where an Element is present but not value

  ProcedureCategoryCodesSNOMEDCT.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ProcedureCategoryCodesSNOMEDCT._(super.input, [super.element])
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
    '24642003',
    '409063005',
    '409073007',
    '387713003',
    '103693007',
    '46947000',
    '410606002',
  ];

  /// Returns the enum value with an element attached
  ProcedureCategoryCodesSNOMEDCT withElement(Element? newElement) {
    return ProcedureCategoryCodesSNOMEDCT._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProcedureCategoryCodesSNOMEDCT.$value';
}
