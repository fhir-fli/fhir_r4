import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Ingredient] /// An ingredient of a manufactured item or pharmaceutical product.
class Ingredient extends DomainResource {
  Ingredient({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.statusElement,
    this.for_,
    required this.role,
    this.function_,
    this.allergenicIndicator,
    this.allergenicIndicatorElement,
    this.manufacturer,
    required this.substance,
  }) : super(resourceType: R4ResourceType.Ingredient);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// The identifier(s) of this Ingredient that are assigned by business
  /// processes and/or used to refer to it when a direct URL reference to the
  /// resource itself is not appropriate.
  final Identifier? identifier;

  /// [status] /// The status of this ingredient. Enables tracking the life-cycle of the
  /// content.
  final FhirCode status;
  final Element? statusElement;

  /// [for_] /// The product which this ingredient is a constituent part of.
  final List<Reference>? for_;

  /// [role] /// A classification of the ingredient identifying its purpose within the
  /// product, e.g. active, inactive.
  final CodeableConcept role;

  /// [function_] /// A classification of the ingredient identifying its precise purpose(s) in
  /// the drug product. This extends the Ingredient.role to add more detail.
  /// Example: antioxidant, alkalizing agent.
  final List<CodeableConcept>? function_;

  /// [allergenicIndicator] /// If the ingredient is a known or suspected allergen. Note that this is a
  /// property of the substance, so if a reference to a SubstanceDefinition is
  /// used to decribe that (rather than just a code), the allergen information
  /// should go there, not here.
  final FhirBoolean? allergenicIndicator;
  final Element? allergenicIndicatorElement;

  /// [manufacturer] /// The organization(s) that manufacture this ingredient. Can be used to
  /// indicate: 1) Organizations we are aware of that manufacture this ingredient
  /// 2) Specific Manufacturer(s) currently being used 3) Set of organisations
  /// allowed to manufacture this ingredient for this product Users must be clear
  /// on the application of context relevant to their use case.
  final List<IngredientManufacturer>? manufacturer;

  /// [substance] /// The substance that comprises this ingredient.
  final IngredientSubstance substance;
  @override
  Ingredient clone() => throw UnimplementedError();
  Ingredient copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    FhirCode? status,
    Element? statusElement,
    List<Reference>? for_,
    CodeableConcept? role,
    List<CodeableConcept>? function_,
    FhirBoolean? allergenicIndicator,
    Element? allergenicIndicatorElement,
    List<IngredientManufacturer>? manufacturer,
    IngredientSubstance? substance,
  }) {
    return Ingredient(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      for_: for_ ?? this.for_,
      role: role ?? this.role,
      function_: function_ ?? this.function_,
      allergenicIndicator: allergenicIndicator ?? this.allergenicIndicator,
      allergenicIndicatorElement:
          allergenicIndicatorElement ?? this.allergenicIndicatorElement,
      manufacturer: manufacturer ?? this.manufacturer,
      substance: substance ?? this.substance,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [IngredientManufacturer] /// The organization(s) that manufacture this ingredient. Can be used to
/// indicate: 1) Organizations we are aware of that manufacture this ingredient
/// 2) Specific Manufacturer(s) currently being used 3) Set of organisations
/// allowed to manufacture this ingredient for this product Users must be clear
/// on the application of context relevant to their use case.
class IngredientManufacturer extends BackboneElement {
  IngredientManufacturer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    this.roleElement,
    required this.manufacturer,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [role] /// The way in which this manufacturer is associated with the ingredient. For
  /// example whether it is a possible one (others allowed), or an exclusive
  /// authorized one for this ingredient. Note that this is not the manufacturing
  /// process role.
  final FhirCode? role;
  final Element? roleElement;

  /// [manufacturer] /// An organization that manufactures this ingredient.
  final Reference manufacturer;
  @override
  IngredientManufacturer clone() => throw UnimplementedError();
  IngredientManufacturer copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? role,
    Element? roleElement,
    Reference? manufacturer,
  }) {
    return IngredientManufacturer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      roleElement: roleElement ?? this.roleElement,
      manufacturer: manufacturer ?? this.manufacturer,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [IngredientSubstance] /// The substance that comprises this ingredient.
class IngredientSubstance extends BackboneElement {
  IngredientSubstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.strength,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// A code or full resource that represents the ingredient's substance.
  final CodeableReference code;

  /// [strength] /// The quantity of substance in the unit of presentation, or in the volume (or
  /// mass) of the single pharmaceutical product or manufactured item. The
  /// allowed repetitions do not represent different strengths, but are different
  /// representations - mathematically equivalent - of a single strength.
  final List<IngredientStrength>? strength;
  @override
  IngredientSubstance clone() => throw UnimplementedError();
  IngredientSubstance copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? code,
    List<IngredientStrength>? strength,
  }) {
    return IngredientSubstance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      strength: strength ?? this.strength,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [IngredientStrength] /// The quantity of substance in the unit of presentation, or in the volume (or
/// mass) of the single pharmaceutical product or manufactured item. The
/// allowed repetitions do not represent different strengths, but are different
/// representations - mathematically equivalent - of a single strength.
class IngredientStrength extends BackboneElement {
  IngredientStrength({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.presentationRatio,
    this.presentationRatioRange,
    this.textPresentation,
    this.textPresentationElement,
    this.concentrationRatio,
    this.concentrationRatioRange,
    this.textConcentration,
    this.textConcentrationElement,
    this.measurementPoint,
    this.measurementPointElement,
    this.country,
    this.referenceStrength,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [presentationRatio] /// The quantity of substance in the unit of presentation, or in the volume (or
  /// mass) of the single pharmaceutical product or manufactured item. Unit of
  /// presentation refers to the quantity that the item occurs in e.g. a strength
  /// per tablet size, perhaps 'per 20mg' (the size of the tablet). It is not
  /// generally normalized as a unitary unit, which would be 'per mg').
  final Ratio? presentationRatio;

  /// [presentationRatioRange] /// The quantity of substance in the unit of presentation, or in the volume (or
  /// mass) of the single pharmaceutical product or manufactured item. Unit of
  /// presentation refers to the quantity that the item occurs in e.g. a strength
  /// per tablet size, perhaps 'per 20mg' (the size of the tablet). It is not
  /// generally normalized as a unitary unit, which would be 'per mg').
  final RatioRange? presentationRatioRange;

  /// [textPresentation] /// A textual represention of either the whole of the presentation strength or
  /// a part of it - with the rest being in Strength.presentation as a ratio.
  final FhirString? textPresentation;
  final Element? textPresentationElement;

  /// [concentrationRatio] /// The strength per unitary volume (or mass).
  final Ratio? concentrationRatio;

  /// [concentrationRatioRange] /// The strength per unitary volume (or mass).
  final RatioRange? concentrationRatioRange;

  /// [textConcentration] /// A textual represention of either the whole of the concentration strength or
  /// a part of it - with the rest being in Strength.concentration as a ratio.
  final FhirString? textConcentration;
  final Element? textConcentrationElement;

  /// [measurementPoint] /// For when strength is measured at a particular point or distance. There are
  /// products where strength is measured at a particular point. For example, the
  /// strength of the ingredient in some inhalers is measured at a particular
  /// position relative to the point of aerosolization.
  final FhirString? measurementPoint;
  final Element? measurementPointElement;

  /// [country] /// The country or countries for which the strength range applies.
  final List<CodeableConcept>? country;

  /// [referenceStrength] /// Strength expressed in terms of a reference substance. For when the
  /// ingredient strength is additionally expressed as equivalent to the strength
  /// of some other closely related substance (e.g. salt vs. base). Reference
  /// strength represents the strength (quantitative composition) of the active
  /// moiety of the active substance. There are situations when the active
  /// substance and active moiety are different, therefore both a strength and a
  /// reference strength are needed.
  final List<IngredientReferenceStrength>? referenceStrength;
  @override
  IngredientStrength clone() => throw UnimplementedError();
  IngredientStrength copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Ratio? presentationRatio,
    RatioRange? presentationRatioRange,
    FhirString? textPresentation,
    Element? textPresentationElement,
    Ratio? concentrationRatio,
    RatioRange? concentrationRatioRange,
    FhirString? textConcentration,
    Element? textConcentrationElement,
    FhirString? measurementPoint,
    Element? measurementPointElement,
    List<CodeableConcept>? country,
    List<IngredientReferenceStrength>? referenceStrength,
  }) {
    return IngredientStrength(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      presentationRatio: presentationRatio ?? this.presentationRatio,
      presentationRatioRange:
          presentationRatioRange ?? this.presentationRatioRange,
      textPresentation: textPresentation ?? this.textPresentation,
      textPresentationElement:
          textPresentationElement ?? this.textPresentationElement,
      concentrationRatio: concentrationRatio ?? this.concentrationRatio,
      concentrationRatioRange:
          concentrationRatioRange ?? this.concentrationRatioRange,
      textConcentration: textConcentration ?? this.textConcentration,
      textConcentrationElement:
          textConcentrationElement ?? this.textConcentrationElement,
      measurementPoint: measurementPoint ?? this.measurementPoint,
      measurementPointElement:
          measurementPointElement ?? this.measurementPointElement,
      country: country ?? this.country,
      referenceStrength: referenceStrength ?? this.referenceStrength,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [IngredientReferenceStrength] /// Strength expressed in terms of a reference substance. For when the
/// ingredient strength is additionally expressed as equivalent to the strength
/// of some other closely related substance (e.g. salt vs. base). Reference
/// strength represents the strength (quantitative composition) of the active
/// moiety of the active substance. There are situations when the active
/// substance and active moiety are different, therefore both a strength and a
/// reference strength are needed.
class IngredientReferenceStrength extends BackboneElement {
  IngredientReferenceStrength({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.substance,
    required this.strengthRatio,
    required this.strengthRatioRange,
    this.measurementPoint,
    this.measurementPointElement,
    this.country,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [substance] /// Relevant reference substance.
  final CodeableReference? substance;

  /// [strengthRatio] /// Strength expressed in terms of a reference substance.
  final Ratio strengthRatio;

  /// [strengthRatioRange] /// Strength expressed in terms of a reference substance.
  final RatioRange strengthRatioRange;

  /// [measurementPoint] /// For when strength is measured at a particular point or distance.
  final FhirString? measurementPoint;
  final Element? measurementPointElement;

  /// [country] /// The country or countries for which the strength range applies.
  final List<CodeableConcept>? country;
  @override
  IngredientReferenceStrength clone() => throw UnimplementedError();
  IngredientReferenceStrength copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? substance,
    Ratio? strengthRatio,
    RatioRange? strengthRatioRange,
    FhirString? measurementPoint,
    Element? measurementPointElement,
    List<CodeableConcept>? country,
  }) {
    return IngredientReferenceStrength(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      substance: substance ?? this.substance,
      strengthRatio: strengthRatio ?? this.strengthRatio,
      strengthRatioRange: strengthRatioRange ?? this.strengthRatioRange,
      measurementPoint: measurementPoint ?? this.measurementPoint,
      measurementPointElement:
          measurementPointElement ?? this.measurementPointElement,
      country: country ?? this.country,
    );
  }
}
