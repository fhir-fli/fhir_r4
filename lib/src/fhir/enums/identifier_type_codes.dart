// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A coded type for an identifier that can be used to determine which identifier to use for a specific purpose.
@Entity()
class IdentifierTypeCodes extends FhirCode {
  /// Factory constructor to create [IdentifierTypeCodes] from JSON.
  factory IdentifierTypeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentifierTypeCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return IdentifierTypeCodes._(value, element);
    }
    throw ArgumentError(
      'IdentifierTypeCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// DL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierTypeCodes.DL([this.element])
      : dbValue = 'DL',
        super('DL', element);

  /// PPN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierTypeCodes.PPN([this.element])
      : dbValue = 'PPN',
        super('PPN', element);

  /// BRN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierTypeCodes.BRN([this.element])
      : dbValue = 'BRN',
        super('BRN', element);

  /// MR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierTypeCodes.MR([this.element])
      : dbValue = 'MR',
        super('MR', element);

  /// MCN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierTypeCodes.MCN([this.element])
      : dbValue = 'MCN',
        super('MCN', element);

  /// EN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierTypeCodes.EN([this.element])
      : dbValue = 'EN',
        super('EN', element);

  /// TAX
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierTypeCodes.TAX([this.element])
      : dbValue = 'TAX',
        super('TAX', element);

  /// NIIP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierTypeCodes.NIIP([this.element])
      : dbValue = 'NIIP',
        super('NIIP', element);

  /// PRN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierTypeCodes.PRN([this.element])
      : dbValue = 'PRN',
        super('PRN', element);

  /// MD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierTypeCodes.MD([this.element])
      : dbValue = 'MD',
        super('MD', element);

  /// DR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierTypeCodes.DR([this.element])
      : dbValue = 'DR',
        super('DR', element);

  /// ACSN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierTypeCodes.ACSN([this.element])
      : dbValue = 'ACSN',
        super('ACSN', element);

  /// UDI
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierTypeCodes.UDI([this.element])
      : dbValue = 'UDI',
        super('UDI', element);

  /// SNO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierTypeCodes.SNO([this.element])
      : dbValue = 'SNO',
        super('SNO', element);

  /// SB
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierTypeCodes.SB([this.element])
      : dbValue = 'SB',
        super('SB', element);

  /// PLAC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierTypeCodes.PLAC([this.element])
      : dbValue = 'PLAC',
        super('PLAC', element);

  /// FILL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierTypeCodes.FILL([this.element])
      : dbValue = 'FILL',
        super('FILL', element);

  /// JHN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierTypeCodes.JHN([this.element])
      : dbValue = 'JHN',
        super('JHN', element);

  /// For instances where an Element is present but not value

  IdentifierTypeCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  IdentifierTypeCodes._(super.input, [super.element])
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
    'DL',
    'PPN',
    'BRN',
    'MR',
    'MCN',
    'EN',
    'TAX',
    'NIIP',
    'PRN',
    'MD',
    'DR',
    'ACSN',
    'UDI',
    'SNO',
    'SB',
    'PLAC',
    'FILL',
    'JHN',
  ];

  /// Returns the enum value with an element attached
  IdentifierTypeCodes withElement(Element? newElement) {
    return IdentifierTypeCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'IdentifierTypeCodes.$value';
}
