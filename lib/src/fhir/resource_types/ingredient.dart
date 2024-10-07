import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Ingredient extends DomainResource {
  final Identifier? identifier;
  final FhirCode status;
  final Element? statusElement;
  final List<Reference>? for_;
  final CodeableConcept role;
  final List<CodeableConcept>? function_;
  final FhirBoolean? allergenicIndicator;
  final Element? allergenicIndicatorElement;
  final List<BackboneElement>? manufacturer;
  final BackboneElement substance;
  final List<BackboneElement>? strength;
  final List<BackboneElement>? referenceStrength;

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
    this.strength,
    this.referenceStrength,
  }) : super(resourceType: R4ResourceType.Ingredient);

@override
Ingredient clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class IngredientManufacturer extends BackboneElement {
  final FhirCode? role;
  final Element? roleElement;
  final Reference manufacturer;

  IngredientManufacturer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
this.roleElement,
    required this.manufacturer,
  });

@override
IngredientManufacturer clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class IngredientSubstance extends BackboneElement {
  final CodeableReference code;

  IngredientSubstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
  });

@override
IngredientSubstance clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class IngredientStrength extends BackboneElement {
  final Ratio? presentationRatio;
  final RatioRange? presentationRatioRange;
  final FhirString? textPresentation;
  final Element? textPresentationElement;
  final Ratio? concentrationRatio;
  final RatioRange? concentrationRatioRange;
  final FhirString? textConcentration;
  final Element? textConcentrationElement;
  final FhirString? measurementPoint;
  final Element? measurementPointElement;
  final List<CodeableConcept>? country;

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
  });

@override
IngredientStrength clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class IngredientReferenceStrength extends BackboneElement {
  final CodeableReference? substance;
  final Ratio strengthRatio;
  final RatioRange strengthRatioRange;
  final FhirString? measurementPoint;
  final Element? measurementPointElement;
  final List<CodeableConcept>? country;

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

@override
IngredientReferenceStrength clone() => throw UnimplementedError();
}

