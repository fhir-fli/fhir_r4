part of 'substance_definition.dart';

/// Quantitative value for this moiety.
sealed class AmountXSubstanceDefinitionMoiety {}

/// Quantitative value for this moiety.
class QuantityAmountSubstanceDefinitionMoiety extends Quantity
    implements AmountXSubstanceDefinitionMoiety {
  /// Factory constructor for super class
  factory QuantityAmountSubstanceDefinitionMoiety.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityAmountSubstanceDefinitionMoiety;
}

/// Quantitative value for this moiety.
class StringAmountSubstanceDefinitionMoiety extends FhirString
    implements AmountXSubstanceDefinitionMoiety {
  /// Constructor for [StringAmountSubstanceDefinitionMoiety]
  StringAmountSubstanceDefinitionMoiety(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringAmountSubstanceDefinitionMoiety.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringAmountSubstanceDefinitionMoiety;
}

/// A value for the property.
sealed class ValueXSubstanceDefinitionProperty {}

/// A value for the property.
class CodeableConceptValueSubstanceDefinitionProperty extends CodeableConcept
    implements ValueXSubstanceDefinitionProperty {
  /// Factory constructor for super class
  factory CodeableConceptValueSubstanceDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptValueSubstanceDefinitionProperty;
}

/// A value for the property.
class QuantityValueSubstanceDefinitionProperty extends Quantity
    implements ValueXSubstanceDefinitionProperty {
  /// Factory constructor for super class
  factory QuantityValueSubstanceDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityValueSubstanceDefinitionProperty;
}

/// A value for the property.
class DateValueSubstanceDefinitionProperty extends FhirDate
    implements ValueXSubstanceDefinitionProperty {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateValueSubstanceDefinitionProperty.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) =>
      FhirDate.fromString(
        input,
        element: element,
        id: id,
        extension_: extension_,
      ) as DateValueSubstanceDefinitionProperty;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateValueSubstanceDefinitionProperty.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateValueSubstanceDefinitionProperty;

  /// Factory constructor for super class
  factory DateValueSubstanceDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateValueSubstanceDefinitionProperty;
}

/// A value for the property.
class BooleanValueSubstanceDefinitionProperty extends FhirBoolean
    implements ValueXSubstanceDefinitionProperty {
  /// Constructor for [BooleanValueSubstanceDefinitionProperty]
  BooleanValueSubstanceDefinitionProperty(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueSubstanceDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanValueSubstanceDefinitionProperty;
}

/// A value for the property.
class AttachmentValueSubstanceDefinitionProperty extends Attachment
    implements ValueXSubstanceDefinitionProperty {
  /// Factory constructor for super class
  factory AttachmentValueSubstanceDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json) as AttachmentValueSubstanceDefinitionProperty;
}

/// A pointer to another substance, as a resource or just a
/// representational code.
sealed class SubstanceDefinitionXSubstanceDefinitionRelationship {}

/// A pointer to another substance, as a resource or just a
/// representational code.
class ReferenceSubstanceDefinitionSubstanceDefinitionRelationship
    extends Reference
    implements SubstanceDefinitionXSubstanceDefinitionRelationship {
  /// Factory constructor for super class
  factory ReferenceSubstanceDefinitionSubstanceDefinitionRelationship.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceSubstanceDefinitionSubstanceDefinitionRelationship;
}

/// A pointer to another substance, as a resource or just a
/// representational code.
class CodeableConceptSubstanceDefinitionSubstanceDefinitionRelationship
    extends CodeableConcept
    implements SubstanceDefinitionXSubstanceDefinitionRelationship {
  /// Factory constructor for super class
  factory CodeableConceptSubstanceDefinitionSubstanceDefinitionRelationship.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptSubstanceDefinitionSubstanceDefinitionRelationship;
}

/// A numeric factor for the relationship, for instance to express that the
/// salt of a substance has some percentage of the active substance in
/// relation to some other.
sealed class AmountXSubstanceDefinitionRelationship {}

/// A numeric factor for the relationship, for instance to express that the
/// salt of a substance has some percentage of the active substance in
/// relation to some other.
class QuantityAmountSubstanceDefinitionRelationship extends Quantity
    implements AmountXSubstanceDefinitionRelationship {
  /// Factory constructor for super class
  factory QuantityAmountSubstanceDefinitionRelationship.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityAmountSubstanceDefinitionRelationship;
}

/// A numeric factor for the relationship, for instance to express that the
/// salt of a substance has some percentage of the active substance in
/// relation to some other.
class RatioAmountSubstanceDefinitionRelationship extends Ratio
    implements AmountXSubstanceDefinitionRelationship {
  /// Factory constructor for super class
  factory RatioAmountSubstanceDefinitionRelationship.fromJson(
    Map<String, dynamic> json,
  ) =>
      Ratio.fromJson(json) as RatioAmountSubstanceDefinitionRelationship;
}

/// A numeric factor for the relationship, for instance to express that the
/// salt of a substance has some percentage of the active substance in
/// relation to some other.
class StringAmountSubstanceDefinitionRelationship extends FhirString
    implements AmountXSubstanceDefinitionRelationship {
  /// Constructor for [StringAmountSubstanceDefinitionRelationship]
  StringAmountSubstanceDefinitionRelationship(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringAmountSubstanceDefinitionRelationship.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringAmountSubstanceDefinitionRelationship;
}
