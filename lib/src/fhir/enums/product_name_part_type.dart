// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Type of part of a name for a Medicinal Product.
class ProductNamePartType {
  // Private constructor for internal use (like enum)
  ProductNamePartType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ProductNamePartType values
  /// FullName
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType FullName = ProductNamePartType._(
    'FullName',
  );

  /// InventedNamePart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType InventedNamePart = ProductNamePartType._(
    'InventedNamePart',
  );

  /// ScientificNamePart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType ScientificNamePart = ProductNamePartType._(
    'ScientificNamePart',
  );

  /// StrengthPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType StrengthPart = ProductNamePartType._(
    'StrengthPart',
  );

  /// DoseFormPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType DoseFormPart = ProductNamePartType._(
    'DoseFormPart',
  );

  /// FormulationPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType FormulationPart = ProductNamePartType._(
    'FormulationPart',
  );

  /// IntendedUsePart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType IntendedUsePart = ProductNamePartType._(
    'IntendedUsePart',
  );

  /// PopulationPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType PopulationPart = ProductNamePartType._(
    'PopulationPart',
  );

  /// ContainerPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType ContainerPart = ProductNamePartType._(
    'ContainerPart',
  );

  /// DevicePart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType DevicePart = ProductNamePartType._(
    'DevicePart',
  );

  /// TrademarkOrCompanyPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType TrademarkOrCompanyPart =
      ProductNamePartType._(
    'TrademarkOrCompanyPart',
  );

  /// TimeOrPeriodPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType TimeOrPeriodPart = ProductNamePartType._(
    'TimeOrPeriodPart',
  );

  /// FlavorPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType FlavorPart = ProductNamePartType._(
    'FlavorPart',
  );

  /// DelimiterPart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType DelimiterPart = ProductNamePartType._(
    'DelimiterPart',
  );

  /// LegacyNamePart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType LegacyNamePart = ProductNamePartType._(
    'LegacyNamePart',
  );

  /// SpeciesNamePart
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductNamePartType SpeciesNamePart = ProductNamePartType._(
    'SpeciesNamePart',
  );

  /// For instances where an Element is present but not value

  static final ProductNamePartType elementOnly = ProductNamePartType._('');

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
    return ProductNamePartType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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

  /// String representation
  @override
  String toString() => fhirCode;
}
