// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Type of part of a name for a Medicinal Product.
class ProductNamePartType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ProductNamePartType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ProductNamePartType] from JSON.
  factory ProductNamePartType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductNamePartType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ProductNamePartType cannot be constructed from JSON.',
      );
    }
    return ProductNamePartType._(value: value, element: element);
  }

  /// FullName
  static final ProductNamePartType FullName = ProductNamePartType._(
    value: 'FullName',
  );

  /// InventedNamePart
  static final ProductNamePartType InventedNamePart = ProductNamePartType._(
    value: 'InventedNamePart',
  );

  /// ScientificNamePart
  static final ProductNamePartType ScientificNamePart = ProductNamePartType._(
    value: 'ScientificNamePart',
  );

  /// StrengthPart
  static final ProductNamePartType StrengthPart = ProductNamePartType._(
    value: 'StrengthPart',
  );

  /// DoseFormPart
  static final ProductNamePartType DoseFormPart = ProductNamePartType._(
    value: 'DoseFormPart',
  );

  /// FormulationPart
  static final ProductNamePartType FormulationPart = ProductNamePartType._(
    value: 'FormulationPart',
  );

  /// IntendedUsePart
  static final ProductNamePartType IntendedUsePart = ProductNamePartType._(
    value: 'IntendedUsePart',
  );

  /// PopulationPart
  static final ProductNamePartType PopulationPart = ProductNamePartType._(
    value: 'PopulationPart',
  );

  /// ContainerPart
  static final ProductNamePartType ContainerPart = ProductNamePartType._(
    value: 'ContainerPart',
  );

  /// DevicePart
  static final ProductNamePartType DevicePart = ProductNamePartType._(
    value: 'DevicePart',
  );

  /// TrademarkOrCompanyPart
  static final ProductNamePartType TrademarkOrCompanyPart =
      ProductNamePartType._(
    value: 'TrademarkOrCompanyPart',
  );

  /// TimeOrPeriodPart
  static final ProductNamePartType TimeOrPeriodPart = ProductNamePartType._(
    value: 'TimeOrPeriodPart',
  );

  /// FlavorPart
  static final ProductNamePartType FlavorPart = ProductNamePartType._(
    value: 'FlavorPart',
  );

  /// DelimiterPart
  static final ProductNamePartType DelimiterPart = ProductNamePartType._(
    value: 'DelimiterPart',
  );

  /// LegacyNamePart
  static final ProductNamePartType LegacyNamePart = ProductNamePartType._(
    value: 'LegacyNamePart',
  );

  /// SpeciesNamePart
  static final ProductNamePartType SpeciesNamePart = ProductNamePartType._(
    value: 'SpeciesNamePart',
  );

  /// For instances where an Element is present but not value

  static final ProductNamePartType elementOnly =
      ProductNamePartType._(value: '');

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

  /// Clones the current instance
  @override
  ProductNamePartType clone() => ProductNamePartType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ProductNamePartType withElement(Element? newElement) {
    return ProductNamePartType._(value: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  ProductNamePartType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ProductNamePartType._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
