// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// An authority that officates substance names.
@Entity()
class SubstanceNameAuthority extends FhirCode {
  /// Factory constructor to create [SubstanceNameAuthority] from JSON.
  factory SubstanceNameAuthority.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceNameAuthority.elementOnly(element);
    }
    if (values.contains(value)) {
      return SubstanceNameAuthority._(value, element);
    }
    throw ArgumentError(
      'SubstanceNameAuthority.fromJson: JSON value is not a valid value',
    );
  }

  /// BAN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceNameAuthority.BAN([this.element])
      : dbValue = 'BAN',
        super('BAN', element);

  /// COSING
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceNameAuthority.COSING([this.element])
      : dbValue = 'COSING',
        super('COSING', element);

  /// Ph_Eur_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceNameAuthority.Ph_Eur_([this.element])
      : dbValue = 'Ph.Eur.',
        super('Ph.Eur.', element);

  /// FCC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceNameAuthority.FCC([this.element])
      : dbValue = 'FCC',
        super('FCC', element);

  /// INCI
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceNameAuthority.INCI([this.element])
      : dbValue = 'INCI',
        super('INCI', element);

  /// INN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceNameAuthority.INN([this.element])
      : dbValue = 'INN',
        super('INN', element);

  /// JAN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceNameAuthority.JAN([this.element])
      : dbValue = 'JAN',
        super('JAN', element);

  /// JECFA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceNameAuthority.JECFA([this.element])
      : dbValue = 'JECFA',
        super('JECFA', element);

  /// MARTINDALE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceNameAuthority.MARTINDALE([this.element])
      : dbValue = 'MARTINDALE',
        super('MARTINDALE', element);

  /// USAN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceNameAuthority.USAN([this.element])
      : dbValue = 'USAN',
        super('USAN', element);

  /// USP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceNameAuthority.USP([this.element])
      : dbValue = 'USP',
        super('USP', element);

  /// PHF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceNameAuthority.PHF([this.element])
      : dbValue = 'PHF',
        super('PHF', element);

  /// HAB
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceNameAuthority.HAB([this.element])
      : dbValue = 'HAB',
        super('HAB', element);

  /// PhF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceNameAuthority.PhF([this.element])
      : dbValue = 'PhF',
        super('PhF', element);

  /// IUIS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceNameAuthority.IUIS([this.element])
      : dbValue = 'IUIS',
        super('IUIS', element);

  /// For instances where an Element is present but not value

  SubstanceNameAuthority.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SubstanceNameAuthority._(super.input, [super.element])
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
    'BAN',
    'COSING',
    'Ph.Eur.',
    'FCC',
    'INCI',
    'INN',
    'JAN',
    'JECFA',
    'MARTINDALE',
    'USAN',
    'USP',
    'PHF',
    'HAB',
    'PhF',
    'IUIS',
  ];

  /// Returns the enum value with an element attached
  SubstanceNameAuthority withElement(Element? newElement) {
    return SubstanceNameAuthority._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SubstanceNameAuthority.$value';
}
