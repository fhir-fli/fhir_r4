// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Type of part of a name for a Medicinal Product.
@collection
class ProductNamePartType {
  /// Constructor for internal use (like enum)
  ProductNamePartType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ProductNamePartType values
  /// FullName
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType FullName = ProductNamePartType(
    fhirCode: 'FullName',
  );

  /// InventedNamePart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType InventedNamePart = ProductNamePartType(
    fhirCode: 'InventedNamePart',
  );

  /// ScientificNamePart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType ScientificNamePart = ProductNamePartType(
    fhirCode: 'ScientificNamePart',
  );

  /// StrengthPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType StrengthPart = ProductNamePartType(
    fhirCode: 'StrengthPart',
  );

  /// DoseFormPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType DoseFormPart = ProductNamePartType(
    fhirCode: 'DoseFormPart',
  );

  /// FormulationPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType FormulationPart = ProductNamePartType(
    fhirCode: 'FormulationPart',
  );

  /// IntendedUsePart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType IntendedUsePart = ProductNamePartType(
    fhirCode: 'IntendedUsePart',
  );

  /// PopulationPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType PopulationPart = ProductNamePartType(
    fhirCode: 'PopulationPart',
  );

  /// ContainerPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType ContainerPart = ProductNamePartType(
    fhirCode: 'ContainerPart',
  );

  /// DevicePart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType DevicePart = ProductNamePartType(
    fhirCode: 'DevicePart',
  );

  /// TrademarkOrCompanyPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType TrademarkOrCompanyPart = ProductNamePartType(
    fhirCode: 'TrademarkOrCompanyPart',
  );

  /// TimeOrPeriodPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType TimeOrPeriodPart = ProductNamePartType(
    fhirCode: 'TimeOrPeriodPart',
  );

  /// FlavorPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType FlavorPart = ProductNamePartType(
    fhirCode: 'FlavorPart',
  );

  /// DelimiterPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType DelimiterPart = ProductNamePartType(
    fhirCode: 'DelimiterPart',
  );

  /// LegacyNamePart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType LegacyNamePart = ProductNamePartType(
    fhirCode: 'LegacyNamePart',
  );

  /// SpeciesNamePart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType SpeciesNamePart = ProductNamePartType(
    fhirCode: 'SpeciesNamePart',
  );

  /// For instances where an Element is present but not value

  static final ProductNamePartType elementOnly = ProductNamePartType();

  /// List of all enum-like values
  static final List<ProductNamePartType> values = [
    FullName,
    InventedNamePart,
    ScientificNamePart,
    StrengthPart,
    DoseFormPart,
    FormulationPart,
    IntendedUsePart,
    PopulationPart,
    ContainerPart,
    DevicePart,
    TrademarkOrCompanyPart,
    TimeOrPeriodPart,
    FlavorPart,
    DelimiterPart,
    LegacyNamePart,
    SpeciesNamePart,
  ];

  /// Returns the enum value with an element attached
  ProductNamePartType withElement(Element? newElement) {
    return ProductNamePartType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ProductNamePartType] from JSON.
  static ProductNamePartType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductNamePartType.elementOnly.withElement(element);
    }
    return ProductNamePartType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProductNamePartType.$fhirCode';
}
