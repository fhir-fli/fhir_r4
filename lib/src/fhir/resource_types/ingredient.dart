import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Ingredient extends DomainResource {
  final Identifier? identifier;
  final FhirCode? status;
  final Element? statusElement;
  final List<Reference>? for_;
  final CodeableConcept role;
  final List<CodeableConcept>? function_;
  final FhirBoolean? allergenicIndicator;
  final Element? allergenicIndicatorElement;
  final List<IngredientManufacturer>? manufacturer;
  final IngredientSubstance substance;

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
    this.status,
    this.statusElement,
    this.for_,
    required this.role,
    this.function_,
    this.allergenicIndicator,
    this.allergenicIndicatorElement,
    this.manufacturer,
    required this.substance,
  }): super(resourceType: R4ResourceType.Ingredient);

@override
Ingredient clone() => this;

}


@Data()
@JsonCodable()
class IngredientManufacturer {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? role;
  final Element? roleElement;
  final Reference manufacturer;

  IngredientManufacturer({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.role,
    this.roleElement,
    required this.manufacturer,
  });

}


@Data()
@JsonCodable()
class IngredientSubstance {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableReference code;
  final List<IngredientStrength>? strength;

  IngredientSubstance({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.strength,
  });

}


@Data()
@JsonCodable()
class IngredientStrength {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
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
  final List<IngredientReferenceStrength>? referenceStrength;

  IngredientStrength({
    this.id,
    this.extension_,
    this.modifierExtension,
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

}


@Data()
@JsonCodable()
class IngredientReferenceStrength {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableReference? substance;
  final Ratio? strengthRatio;
  final RatioRange? strengthRatioRange;
  final FhirString? measurementPoint;
  final Element? measurementPointElement;
  final List<CodeableConcept>? country;

  IngredientReferenceStrength({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.substance,
    this.strengthRatio,
    this.strengthRatioRange,
    this.measurementPoint,
    this.measurementPointElement,
    this.country,
  });

}



