// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes sample Coverage Copayment Type codes.
@Entity()
class CoverageCopayTypeCodes extends FhirCode {
  /// Factory constructor to create [CoverageCopayTypeCodes] from JSON.
  factory CoverageCopayTypeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CoverageCopayTypeCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return CoverageCopayTypeCodes._(value, element);
    }
    throw ArgumentError(
      'CoverageCopayTypeCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// gpvisit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageCopayTypeCodes.gpvisit([this.element])
      : dbValue = 'gpvisit',
        super('gpvisit', element);

  /// spvisit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageCopayTypeCodes.spvisit([this.element])
      : dbValue = 'spvisit',
        super('spvisit', element);

  /// emergency
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageCopayTypeCodes.emergency([this.element])
      : dbValue = 'emergency',
        super('emergency', element);

  /// inpthosp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageCopayTypeCodes.inpthosp([this.element])
      : dbValue = 'inpthosp',
        super('inpthosp', element);

  /// televisit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageCopayTypeCodes.televisit([this.element])
      : dbValue = 'televisit',
        super('televisit', element);

  /// urgentcare
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageCopayTypeCodes.urgentcare([this.element])
      : dbValue = 'urgentcare',
        super('urgentcare', element);

  /// copaypct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageCopayTypeCodes.copaypct([this.element])
      : dbValue = 'copaypct',
        super('copaypct', element);

  /// copay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageCopayTypeCodes.copay([this.element])
      : dbValue = 'copay',
        super('copay', element);

  /// deductible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageCopayTypeCodes.deductible([this.element])
      : dbValue = 'deductible',
        super('deductible', element);

  /// maxoutofpocket
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageCopayTypeCodes.maxoutofpocket([this.element])
      : dbValue = 'maxoutofpocket',
        super('maxoutofpocket', element);

  /// For instances where an Element is present but not value

  CoverageCopayTypeCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CoverageCopayTypeCodes._(super.input, [super.element])
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
    'gpvisit',
    'spvisit',
    'emergency',
    'inpthosp',
    'televisit',
    'urgentcare',
    'copaypct',
    'copay',
    'deductible',
    'maxoutofpocket',
  ];

  /// Returns the enum value with an element attached
  CoverageCopayTypeCodes withElement(Element? newElement) {
    return CoverageCopayTypeCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CoverageCopayTypeCodes.$value';
}
