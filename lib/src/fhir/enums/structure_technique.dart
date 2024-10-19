// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The method used to elucidate the structure or characterization of the drug substance.
@Entity()
class StructureTechnique extends FhirCode {
  /// Factory constructor to create [StructureTechnique] from JSON.
  factory StructureTechnique.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureTechnique.elementOnly(element);
    }
    if (values.contains(value)) {
      return StructureTechnique._(value, element);
    }
    throw ArgumentError(
      'StructureTechnique.fromJson: JSON value is not a valid value',
    );
  }

  /// X_Ray
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureTechnique.X_Ray([this.element])
      : dbValue = 'X-Ray',
        super('X-Ray', element);

  /// HPLC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureTechnique.HPLC([this.element])
      : dbValue = 'HPLC',
        super('HPLC', element);

  /// NMR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureTechnique.NMR([this.element])
      : dbValue = 'NMR',
        super('NMR', element);

  /// PeptideMapping
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureTechnique.PeptideMapping([this.element])
      : dbValue = 'PeptideMapping',
        super('PeptideMapping', element);

  /// LigandBindingAssay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureTechnique.LigandBindingAssay([this.element])
      : dbValue = 'LigandBindingAssay',
        super('LigandBindingAssay', element);

  /// For instances where an Element is present but not value

  StructureTechnique.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  StructureTechnique._(super.input, [super.element])
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
    'X-Ray',
    'HPLC',
    'NMR',
    'PeptideMapping',
    'LigandBindingAssay',
  ];

  /// Returns the enum value with an element attached
  StructureTechnique withElement(Element? newElement) {
    return StructureTechnique._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StructureTechnique.$value';
}
