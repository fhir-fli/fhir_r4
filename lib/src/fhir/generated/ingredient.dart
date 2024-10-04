import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Ingredient {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Identifier identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final List<Reference> for_;
  final CodeableConcept role;
  final List<CodeableConcept> function_;
  final FhirBoolean allergenicIndicator;
  final PrimitiveElement allergenicIndicatorElement;
  final List<IngredientManufacturer> manufacturer;
  final IngredientSubstance substance;
  const Ingredient({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.status,
    required this.statusElement,
    required this.for_,
    required this.role,
    required this.function_,
    required this.allergenicIndicator,
    required this.allergenicIndicatorElement,
    required this.manufacturer,
    required this.substance,
  });
}

@Data()
@JsonCodable()
class IngredientManufacturer {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode role;
  final PrimitiveElement roleElement;
  final Reference manufacturer;
  const IngredientManufacturer({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.role,
    required this.roleElement,
    required this.manufacturer,
  });
}

@Data()
@JsonCodable()
class IngredientSubstance {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableReference code;
  final List<IngredientStrength> strength;
  const IngredientSubstance({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.strength,
  });
}

@Data()
@JsonCodable()
class IngredientStrength {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Ratio presentationRatio;
  final RatioRange presentationRatioRange;
  final String textPresentation;
  final PrimitiveElement textPresentationElement;
  final Ratio concentrationRatio;
  final RatioRange concentrationRatioRange;
  final String textConcentration;
  final PrimitiveElement textConcentrationElement;
  final String measurementPoint;
  final PrimitiveElement measurementPointElement;
  final List<CodeableConcept> country;
  final List<IngredientReferenceStrength> referenceStrength;
  const IngredientStrength({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.presentationRatio,
    required this.presentationRatioRange,
    required this.textPresentation,
    required this.textPresentationElement,
    required this.concentrationRatio,
    required this.concentrationRatioRange,
    required this.textConcentration,
    required this.textConcentrationElement,
    required this.measurementPoint,
    required this.measurementPointElement,
    required this.country,
    required this.referenceStrength,
  });
}

@Data()
@JsonCodable()
class IngredientReferenceStrength {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableReference substance;
  final Ratio strengthRatio;
  final RatioRange strengthRatioRange;
  final String measurementPoint;
  final PrimitiveElement measurementPointElement;
  final List<CodeableConcept> country;
  const IngredientReferenceStrength({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.substance,
    required this.strengthRatio,
    required this.strengthRatioRange,
    required this.measurementPoint,
    required this.measurementPointElement,
    required this.country,
  });
}


