// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Type of part of a name for a Medicinal Product.
@Entity()
class ProductNamePartType extends FhirCode {
  /// Factory constructor to create [ProductNamePartType] from JSON.
  factory ProductNamePartType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductNamePartType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ProductNamePartType._(value, element);
    }
    throw ArgumentError(
      'ProductNamePartType.fromJson: JSON value is not a valid value',
    );
  }

  /// FullName
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductNamePartType.FullName([this.element])
      : dbValue = 'FullName',
        super('FullName', element);

  /// InventedNamePart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductNamePartType.InventedNamePart([this.element])
      : dbValue = 'InventedNamePart',
        super('InventedNamePart', element);

  /// ScientificNamePart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductNamePartType.ScientificNamePart([this.element])
      : dbValue = 'ScientificNamePart',
        super('ScientificNamePart', element);

  /// StrengthPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductNamePartType.StrengthPart([this.element])
      : dbValue = 'StrengthPart',
        super('StrengthPart', element);

  /// DoseFormPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductNamePartType.DoseFormPart([this.element])
      : dbValue = 'DoseFormPart',
        super('DoseFormPart', element);

  /// FormulationPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductNamePartType.FormulationPart([this.element])
      : dbValue = 'FormulationPart',
        super('FormulationPart', element);

  /// IntendedUsePart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductNamePartType.IntendedUsePart([this.element])
      : dbValue = 'IntendedUsePart',
        super('IntendedUsePart', element);

  /// PopulationPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductNamePartType.PopulationPart([this.element])
      : dbValue = 'PopulationPart',
        super('PopulationPart', element);

  /// ContainerPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductNamePartType.ContainerPart([this.element])
      : dbValue = 'ContainerPart',
        super('ContainerPart', element);

  /// DevicePart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductNamePartType.DevicePart([this.element])
      : dbValue = 'DevicePart',
        super('DevicePart', element);

  /// TrademarkOrCompanyPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductNamePartType.TrademarkOrCompanyPart([this.element])
      : dbValue = 'TrademarkOrCompanyPart',
        super('TrademarkOrCompanyPart', element);

  /// TimeOrPeriodPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductNamePartType.TimeOrPeriodPart([this.element])
      : dbValue = 'TimeOrPeriodPart',
        super('TimeOrPeriodPart', element);

  /// FlavorPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductNamePartType.FlavorPart([this.element])
      : dbValue = 'FlavorPart',
        super('FlavorPart', element);

  /// DelimiterPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductNamePartType.DelimiterPart([this.element])
      : dbValue = 'DelimiterPart',
        super('DelimiterPart', element);

  /// LegacyNamePart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductNamePartType.LegacyNamePart([this.element])
      : dbValue = 'LegacyNamePart',
        super('LegacyNamePart', element);

  /// SpeciesNamePart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductNamePartType.SpeciesNamePart([this.element])
      : dbValue = 'SpeciesNamePart',
        super('SpeciesNamePart', element);

  /// For instances where an Element is present but not value

  ProductNamePartType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ProductNamePartType._(super.input, [super.element])
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
    'FullName',
    'InventedNamePart',
    'ScientificNamePart',
    'StrengthPart',
    'DoseFormPart',
    'FormulationPart',
    'IntendedUsePart',
    'PopulationPart',
    'ContainerPart',
    'DevicePart',
    'TrademarkOrCompanyPart',
    'TimeOrPeriodPart',
    'FlavorPart',
    'DelimiterPart',
    'LegacyNamePart',
    'SpeciesNamePart',
  ];

  /// Returns the enum value with an element attached
  ProductNamePartType withElement(Element? newElement) {
    return ProductNamePartType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProductNamePartType.$value';
}
