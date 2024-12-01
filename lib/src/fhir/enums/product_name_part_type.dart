// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Type of part of a name for a Medicinal Product.
class ProductNamePartType {
  // Private constructor for internal use (like enum)
  ProductNamePartType._(this.fhirCode, {this.element});

  /// Factory constructor to create [ProductNamePartType] from JSON.
  factory ProductNamePartType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductNamePartType.elementOnly.withElement(element);
    }
    return ProductNamePartType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ProductNamePartType values
  /// FullName
  static final ProductNamePartType FullName = ProductNamePartType._(
    'FullName',
  );

  /// InventedNamePart
  static final ProductNamePartType InventedNamePart = ProductNamePartType._(
    'InventedNamePart',
  );

  /// ScientificNamePart
  static final ProductNamePartType ScientificNamePart = ProductNamePartType._(
    'ScientificNamePart',
  );

  /// StrengthPart
  static final ProductNamePartType StrengthPart = ProductNamePartType._(
    'StrengthPart',
  );

  /// DoseFormPart
  static final ProductNamePartType DoseFormPart = ProductNamePartType._(
    'DoseFormPart',
  );

  /// FormulationPart
  static final ProductNamePartType FormulationPart = ProductNamePartType._(
    'FormulationPart',
  );

  /// IntendedUsePart
  static final ProductNamePartType IntendedUsePart = ProductNamePartType._(
    'IntendedUsePart',
  );

  /// PopulationPart
  static final ProductNamePartType PopulationPart = ProductNamePartType._(
    'PopulationPart',
  );

  /// ContainerPart
  static final ProductNamePartType ContainerPart = ProductNamePartType._(
    'ContainerPart',
  );

  /// DevicePart
  static final ProductNamePartType DevicePart = ProductNamePartType._(
    'DevicePart',
  );

  /// TrademarkOrCompanyPart
  static final ProductNamePartType TrademarkOrCompanyPart =
      ProductNamePartType._(
    'TrademarkOrCompanyPart',
  );

  /// TimeOrPeriodPart
  static final ProductNamePartType TimeOrPeriodPart = ProductNamePartType._(
    'TimeOrPeriodPart',
  );

  /// FlavorPart
  static final ProductNamePartType FlavorPart = ProductNamePartType._(
    'FlavorPart',
  );

  /// DelimiterPart
  static final ProductNamePartType DelimiterPart = ProductNamePartType._(
    'DelimiterPart',
  );

  /// LegacyNamePart
  static final ProductNamePartType LegacyNamePart = ProductNamePartType._(
    'LegacyNamePart',
  );

  /// SpeciesNamePart
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

  /// String representation
  @override
  String toString() => fhirCode;
}
